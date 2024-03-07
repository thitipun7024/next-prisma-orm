import { PrismaClient } from '@prisma/client'
import { NextResponse } from 'next/server'

const prisma = new PrismaClient()

export async function GET() {
  return NextResponse.json(await prisma.thitipun.findMany())
}

export async function POST(req: Request) {
  try {
    const { id, title, content } = await req.json()
    const newPost = await prisma.thitipun.create({
      data: {
        id,
        title,
        content,
      },
    })
    return NextResponse.json(newPost)
  } catch (error) {
    return new Response(error as BodyInit, {
      status: 500,
    })
  }
}