# Vikrant's Personal Site

A fast, static personal portfolio and blog built with [Eleventy](https://www.11ty.dev/).

## Prerequisites

- [Node.js](https://nodejs.org/) (v14 or later recommended)

## Installation

Clone the repository and install dependencies:

```bash
git clone <repository-url>
cd vikrant-site
npm install
```

## Local Development

Start the local development server with hot-reloading:

```bash
npm run dev
```

The site will be available at `http://localhost:8080`.

## Building for Production

Generate the static site into the `public/` directory:

```bash
npm run build
```

## Deployment

### S3 Deployment

This project includes a helper script to deploy to an AWS S3 bucket.

**Usage:**

```bash
npm run deploy -- <bucket-name>
```

**Examples:**

Deploy to a root bucket:
```bash
npm run deploy -- my-website.com
```

Deploy to a subdirectory (automatically handles path prefixes):
```bash
npm run deploy -- my-website.com/homepage
```

**Note:** You must have the [AWS CLI](https://aws.amazon.com/cli/) installed and configured with appropriate credentials.

## Project Structure

- `src/`: Source files (Markdown, Templates, CSS).
- `public/`: Generated static site (do not edit directly).
- `.eleventy.js`: Eleventy configuration.
- `deploy.sh`: Deployment helper script.
