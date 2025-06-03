import { defineCollection, z } from "astro:content";

const apps = defineCollection({
    schema: z.object({
        title: z.string(),
        developer: z.string(),
        img: z.string(),
        repo: z.string().url(),
        name_repo: z.string(),
        description: z.string(),
        languages: z.array(z.string()),
        filename: z.string(),
        carpetaBucket: z.string()
        }),
     });

export const collections = { apps }       


        
