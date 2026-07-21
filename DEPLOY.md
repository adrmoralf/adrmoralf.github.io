# Despliegue en GitHub Pages — Guía rápida

## 1. Crear el repositorio en GitHub

Ve a https://github.com/new y crea un repositorio con el nombre exacto:

```
TU_USUARIO.github.io
```

Por ejemplo: `adrianmoral.github.io`. Este nombre especial activa GitHub Pages automáticamente.

## 2. Subir los archivos

Desde la carpeta del proyecto (donde está index.html):

```bash
git init
git add .
git commit -m "Initial portfolio"
git branch -M main
git remote add origin https://github.com/TU_USUARIO/TU_USUARIO.github.io.git
git push -u origin main
```

## 3. Activar GitHub Pages

1. Ve a tu repositorio en GitHub
2. Settings → Pages (menú lateral izquierdo)
3. Source: `Deploy from a branch`
4. Branch: `main` / `/ (root)`
5. Guardar

En 1-2 minutos la web estará en: **https://TU_USUARIO.github.io**

## 4. Actualizar el portfolio en el futuro

Cada vez que edites archivos y quieras publicar los cambios:

```bash
git add .
git commit -m "Añadir proyecto X"
git push
```

GitHub Pages se actualiza automáticamente en ~30 segundos.

## 5. Estructura de archivos

```
TU_USUARIO.github.io/
├── index.html          ← página principal (no renombrar)
├── CV.pdf              ← CV descargable (ya enlazado)
└── DEPLOY.md           ← esta guía (puedes borrarla del repo)
```

## 6. Personalización pendiente (busca los comentarios ✏️ EDITAR en index.html)

- [ ] Nombre completo y título profesional
- [ ] Bio de 2-3 frases
- [ ] URL de GitHub real (`TU_USUARIO`)
- [ ] URL de LinkedIn
- [ ] Skills reales en cada categoría
- [ ] Proyectos reales (duplicar el bloque `project-card`)
- [ ] Experiencia y formación en el timeline
- [ ] Foto de perfil (opcional: añadir `foto.jpg` y editar el avatar)

## 7. Añadir un proyecto nuevo

Copia este bloque dentro de `<div class="projects-grid">` en index.html:

```html
<div class="project-card" data-category="embedded">
  <div class="project-header">
    <span class="project-icon">🔧</span>
    <div class="project-links">
      <a href="https://github.com/TU_USUARIO/REPO" class="project-link-icon" title="GitHub" target="_blank">
        <!-- icono GitHub ya incluido en el HTML -->
      </a>
    </div>
  </div>
  <p class="project-name">Nombre del Proyecto</p>
  <p class="project-desc">Descripción breve.</p>
  <div class="project-tags">
    <span class="project-tag">Tag1</span>
    <span class="project-tag">Tag2</span>
  </div>
  <div class="project-extra-links">
    <a href="URL_VIDEO" class="project-extra-link" target="_blank">▶ Vídeo demo</a>
    <a href="URL_MEMORIA" class="project-extra-link" target="_blank">📄 Memoria</a>
  </div>
</div>
```

Categorías disponibles: `embedded` | `software` | `hardware` | `web`
(añade más botones en `.projects-filter` si necesitas nuevas categorías)
