import { PrismaClient } from '@prisma/client'
import { NextResponse } from 'next/server'

const prisma = new PrismaClient()

export async function GET(
  req: Request,
  { params }: { params: { id: string } },
) {
  return NextResponse.json(await prisma.thitipun.findUnique({
    where: { id: Number(params.id) },
  }))
}

export async function PUT(
  req: Request,
  { params }: { params: { id: string } },
) {
  try {
    const { title, content } = await req.json()
    return NextResponse.json(await prisma.thitipun.update({
      where: { id: Number(params.id) },
      data: { title, content },
    }))
  } catch (error) {
    return new Response(error as BodyInit, {
      status: 500,
    })
  }
}

export async function DELETE(
  req: Request,
  { params }: { params: { id: string } },
) {
  try {
    return NextResponse.json(await prisma.thitipun.delete({
      where: { id: Number(params.id) },
    }))
  } catch (error) {
    return new Response(error as BodyInit, {
      status: 500,
    })
  }
}