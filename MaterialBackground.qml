import Qt3D.Core 2.0
import Qt3D.Render 2.0

Material {
  id: material

  parameters: [
    Parameter {
      name: "score"
      value: score
    }
  ]

  effect: Effect {
    techniques: [
      Technique {
        graphicsApiFilter {
          api: GraphicsApiFilter.OpenGL
          majorVersion: 3
          minorVersion: 2
        }

        renderPasses: RenderPass {
          shaderProgram: ShaderProgram {
            vertexShaderCode: loadSource("qrc:/shaders/gl3/grass.vert")
            fragmentShaderCode: loadSource("qrc:/shaders/gl3/grass.frag")
          }
        }
      },

      Technique {
        graphicsApiFilter {
          api: GraphicsApiFilter.OpenGLES
          majorVersion: 2
          minorVersion: 0
        }

        renderPasses: RenderPass {
          shaderProgram: ShaderProgram {
            vertexShaderCode: loadSource("qrc:/shaders/es2/grass.vert")
            fragmentShaderCode: loadSource("qrc:/shaders/es2/grass.frag")
          }
        }
      }
    ]
  }
}
