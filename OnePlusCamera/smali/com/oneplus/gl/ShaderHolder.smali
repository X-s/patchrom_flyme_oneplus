.class public final Lcom/oneplus/gl/ShaderHolder;
.super Ljava/lang/Object;
.source "ShaderHolder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/gl/ShaderHolder$ShaderInfo;,
        Lcom/oneplus/gl/ShaderHolder$ShaderKey;
    }
.end annotation


# static fields
.field private static final m_ShaderHolder:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lcom/oneplus/gl/ShaderHolder;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final m_Shaders:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Lcom/oneplus/gl/ShaderHolder$ShaderKey;",
            "Lcom/oneplus/gl/ShaderHolder$ShaderInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/oneplus/gl/ShaderHolder;)Ljava/util/Hashtable;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/gl/ShaderHolder;->m_Shaders:Ljava/util/Hashtable;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/oneplus/gl/ShaderHolder;->m_ShaderHolder:Ljava/lang/ThreadLocal;

    .line 10
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/oneplus/gl/ShaderHolder;->m_Shaders:Ljava/util/Hashtable;

    .line 70
    new-instance v0, Lcom/oneplus/gl/ShaderHolder$1;

    invoke-direct {v0, p0}, Lcom/oneplus/gl/ShaderHolder$1;-><init>(Lcom/oneplus/gl/ShaderHolder;)V

    invoke-static {v0}, Lcom/oneplus/gl/EglContextManager;->addCallback(Lcom/oneplus/gl/EglContextManager$Callback;)V

    .line 68
    return-void
.end method

.method public static createShader(ILjava/lang/String;)I
    .locals 9
    .param p0, "type"    # I
    .param p1, "source"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 94
    if-nez p1, :cond_0

    .line 95
    return v7

    .line 98
    :cond_0
    sget-object v6, Lcom/oneplus/gl/ShaderHolder;->m_ShaderHolder:Ljava/lang/ThreadLocal;

    invoke-virtual {v6}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gl/ShaderHolder;

    .line 99
    .local v0, "holder":Lcom/oneplus/gl/ShaderHolder;
    if-nez v0, :cond_1

    .line 101
    new-instance v0, Lcom/oneplus/gl/ShaderHolder;

    .end local v0    # "holder":Lcom/oneplus/gl/ShaderHolder;
    invoke-direct {v0}, Lcom/oneplus/gl/ShaderHolder;-><init>()V

    .line 102
    .restart local v0    # "holder":Lcom/oneplus/gl/ShaderHolder;
    sget-object v6, Lcom/oneplus/gl/ShaderHolder;->m_ShaderHolder:Ljava/lang/ThreadLocal;

    invoke-virtual {v6, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 106
    :cond_1
    new-instance v2, Lcom/oneplus/gl/ShaderHolder$ShaderKey;

    invoke-direct {v2, p0, p1}, Lcom/oneplus/gl/ShaderHolder$ShaderKey;-><init>(ILjava/lang/String;)V

    .line 107
    .local v2, "key":Lcom/oneplus/gl/ShaderHolder$ShaderKey;
    iget-object v6, v0, Lcom/oneplus/gl/ShaderHolder;->m_Shaders:Ljava/util/Hashtable;

    invoke-virtual {v6, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gl/ShaderHolder$ShaderInfo;

    .line 108
    .local v1, "info":Lcom/oneplus/gl/ShaderHolder$ShaderInfo;
    if-eqz v1, :cond_2

    .line 110
    iget v6, v1, Lcom/oneplus/gl/ShaderHolder$ShaderInfo;->referenceCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v1, Lcom/oneplus/gl/ShaderHolder$ShaderInfo;->referenceCount:I

    .line 111
    iget v6, v1, Lcom/oneplus/gl/ShaderHolder$ShaderInfo;->shader:I

    return v6

    .line 115
    :cond_2
    invoke-static {p0}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v4

    .line 116
    .local v4, "shader":I
    if-nez v4, :cond_3

    .line 117
    return v7

    .line 118
    :cond_3
    invoke-static {v4, p1}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 119
    invoke-static {v4}, Landroid/opengl/GLES20;->glCompileShader(I)V

    .line 122
    const/4 v6, 0x1

    new-array v5, v6, [I

    .line 123
    .local v5, "values":[I
    const v6, 0x8b81

    invoke-static {v4, v6, v5, v7}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    .line 124
    aget v6, v5, v7

    if-nez v6, :cond_4

    .line 126
    invoke-static {v4}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 127
    invoke-static {v4}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object v3

    .line 128
    .local v3, "log":Ljava/lang/String;
    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Fail to compile shader : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 132
    .end local v3    # "log":Ljava/lang/String;
    :cond_4
    iget-object v6, v0, Lcom/oneplus/gl/ShaderHolder;->m_Shaders:Ljava/util/Hashtable;

    new-instance v7, Lcom/oneplus/gl/ShaderHolder$ShaderInfo;

    invoke-direct {v7, v2, v4}, Lcom/oneplus/gl/ShaderHolder$ShaderInfo;-><init>(Lcom/oneplus/gl/ShaderHolder$ShaderKey;I)V

    invoke-virtual {v6, v2, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    return v4
.end method

.method public static deleteShader(I)V
    .locals 5
    .param p0, "shader"    # I

    .prologue
    .line 144
    sget-object v3, Lcom/oneplus/gl/ShaderHolder;->m_ShaderHolder:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gl/ShaderHolder;

    .line 145
    .local v0, "holder":Lcom/oneplus/gl/ShaderHolder;
    if-nez v0, :cond_0

    .line 147
    invoke-static {p0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 148
    return-void

    .line 152
    :cond_0
    iget-object v3, v0, Lcom/oneplus/gl/ShaderHolder;->m_Shaders:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "info$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/gl/ShaderHolder$ShaderInfo;

    .line 154
    .local v1, "info":Lcom/oneplus/gl/ShaderHolder$ShaderInfo;
    iget v3, v1, Lcom/oneplus/gl/ShaderHolder$ShaderInfo;->shader:I

    if-ne v3, p0, :cond_1

    .line 156
    iget v3, v1, Lcom/oneplus/gl/ShaderHolder$ShaderInfo;->referenceCount:I

    add-int/lit8 v3, v3, -0x1

    iput v3, v1, Lcom/oneplus/gl/ShaderHolder$ShaderInfo;->referenceCount:I

    .line 157
    iget v3, v1, Lcom/oneplus/gl/ShaderHolder$ShaderInfo;->referenceCount:I

    if-gtz v3, :cond_2

    .line 159
    invoke-static {p0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 160
    iget-object v3, v0, Lcom/oneplus/gl/ShaderHolder;->m_Shaders:Ljava/util/Hashtable;

    iget-object v4, v1, Lcom/oneplus/gl/ShaderHolder$ShaderInfo;->key:Lcom/oneplus/gl/ShaderHolder$ShaderKey;

    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    .end local v1    # "info":Lcom/oneplus/gl/ShaderHolder$ShaderInfo;
    :cond_2
    return-void
.end method
