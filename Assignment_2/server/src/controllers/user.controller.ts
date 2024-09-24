import { Request, Response } from 'express';
import { createUser, getAllUsers, getUserById } from '../service/user.service';
import { NotFoundError } from '../utils/NotFoundErrorClass';

const getUserByIdEP = async (req: Request, res: Response) => {
  try {
    const { id } = req.params;

    const user = await getUserById(id);

    res.status(200).json(user);
  } catch (e) {
    if (e instanceof NotFoundError || (e as Error).name === 'NotFoundError') {
      return res.status(404).json({ error: (e as Error).message });
    }
    return res.status(500).json({ error: 'Internal server error' });
  }
};

const createUserEP = async (req: Request, res: Response) => {
  const { name, password } = req.body;

  if (!name || !password) {
    res.status(400).json({ error: 'Name and password are required' });
  }

  try {
    const user = await createUser(name, password);

    if (!user) {
      return res.status(400).json({ error: 'Failed to create user' });
    }

    res.status(201).json(user);
  } catch (e: unknown) {
    if (e instanceof Error) {
      return res.status(500).json({ error: (e as Error).message });
    }

    res.status(500).json({ error: 'Internal server error' });
  }
};

const getAllUsersEP = async (req: Request, res: Response) => {
  try {
    const users = await getAllUsers();
    res.status(200).json(users);
  } catch (e: unknown) {
    if (e instanceof Error) {
      return res.status(500).json({ error: e.message });
    }

    res.status(500).json({ error: 'Internal server error' });
  }
};

export default {
  getUserByIdEP,
  createUserEP,
  getAllUsersEP,
};
