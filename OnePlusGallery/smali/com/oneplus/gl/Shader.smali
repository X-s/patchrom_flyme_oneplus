.class public abstract Lcom/oneplus/gl/Shader;
.super Lcom/oneplus/gl/EglObject;
.source "Shader.java"


# static fields
.field protected static final IDENTITY_MATRIX:[F

.field public static final TYPE_FRAGMENT_SHADER:I = 0x8b30

.field public static final TYPE_VERTEX_SHADER:I = 0x8b31


# instance fields
.field private m_Id:I

.field private m_Source:Ljava/lang/String;

.field private final m_Type:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 24
    const/16 v0, 0x10

    new-array v0, v0, [F

    sput-object v0, Lcom/oneplus/gl/Shader;->IDENTITY_MATRIX:[F

    .line 36
    sget-object v0, Lcom/oneplus/gl/Shader;->IDENTITY_MATRIX:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 37
    return-void
.end method

.method constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "source"    # Ljava/lang/String;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/oneplus/gl/EglObject;-><init>()V

    .line 51
    iput-object p2, p0, Lcom/oneplus/gl/Shader;->m_Source:Ljava/lang/String;

    .line 52
    iput p1, p0, Lcom/oneplus/gl/Shader;->m_Type:I

    .line 53
    return-void
.end method


# virtual methods
.method public getObjectId()I
    .locals 2

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/oneplus/gl/Shader;->throwIfNotAccessible()V

    .line 64
    iget v0, p0, Lcom/oneplus/gl/Shader;->m_Id:I

    if-gtz v0, :cond_0

    .line 66
    iget v0, p0, Lcom/oneplus/gl/Shader;->m_Type:I

    iget-object v1, p0, Lcom/oneplus/gl/Shader;->m_Source:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/oneplus/gl/ShaderHolder;->createShader(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/oneplus/gl/Shader;->m_Id:I

    .line 67
    iget v0, p0, Lcom/oneplus/gl/Shader;->m_Id:I

    if-gtz v0, :cond_0

    .line 68
    const-string v0, "Fail to create shader"

    invoke-static {v0}, Lcom/oneplus/gl/EglContextManager;->throwEglError(Ljava/lang/String;)V

    .line 72
    :cond_0
    iget v0, p0, Lcom/oneplus/gl/Shader;->m_Id:I

    return v0
.end method

.method public final getType()I
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Lcom/oneplus/gl/Shader;->m_Type:I

    return v0
.end method

.method protected onComplete(Lcom/oneplus/gl/DrawingContext;Lcom/oneplus/gl/Program;Lcom/oneplus/gl/ModelBase;)V
    .locals 0
    .param p1, "drawingContext"    # Lcom/oneplus/gl/DrawingContext;
    .param p2, "program"    # Lcom/oneplus/gl/Program;
    .param p3, "model"    # Lcom/oneplus/gl/ModelBase;

    .prologue
    .line 93
    return-void
.end method

.method protected onEglContextDestroying()V
    .locals 1

    .prologue
    .line 100
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/gl/Shader;->m_Id:I

    .line 101
    invoke-super {p0}, Lcom/oneplus/gl/EglObject;->onEglContextDestroying()V

    .line 102
    return-void
.end method

.method protected onPrepare(Lcom/oneplus/gl/DrawingContext;Lcom/oneplus/gl/Program;Lcom/oneplus/gl/ModelBase;)V
    .locals 0
    .param p1, "drawingContext"    # Lcom/oneplus/gl/DrawingContext;
    .param p2, "program"    # Lcom/oneplus/gl/Program;
    .param p3, "model"    # Lcom/oneplus/gl/ModelBase;

    .prologue
    .line 112
    return-void
.end method

.method protected onRelease()V
    .locals 1

    .prologue
    .line 120
    iget v0, p0, Lcom/oneplus/gl/Shader;->m_Id:I

    if-lez v0, :cond_0

    .line 122
    iget v0, p0, Lcom/oneplus/gl/Shader;->m_Id:I

    invoke-static {v0}, Lcom/oneplus/gl/ShaderHolder;->deleteShader(I)V

    .line 123
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/gl/Shader;->m_Id:I

    .line 127
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/gl/Shader;->m_Source:Ljava/lang/String;

    .line 130
    invoke-super {p0}, Lcom/oneplus/gl/EglObject;->onRelease()V

    .line 131
    return-void
.end method
