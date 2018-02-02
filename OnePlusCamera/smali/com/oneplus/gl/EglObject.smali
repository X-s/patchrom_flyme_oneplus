.class public abstract Lcom/oneplus/gl/EglObject;
.super Lcom/oneplus/base/BasicThreadDependentObject;
.source "EglObject.java"


# instance fields
.field holder:Lcom/oneplus/gl/EglObjectHolder;

.field private m_IsReleased:Z


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/oneplus/base/BasicThreadDependentObject;-><init>()V

    .line 23
    invoke-static {p0}, Lcom/oneplus/gl/EglContextManager;->registerEglObject(Lcom/oneplus/gl/EglObject;)V

    .line 21
    return-void
.end method

.method public static release(Lcom/oneplus/gl/EglObject;)Lcom/oneplus/gl/EglObject;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/oneplus/gl/EglObject;",
            ">(TT;)TT;"
        }
    .end annotation

    .prologue
    .local p0, "obj":Lcom/oneplus/gl/EglObject;, "TT;"
    const/4 v1, 0x0

    .line 86
    if-nez p0, :cond_0

    .line 87
    return-object v1

    .line 88
    :cond_0
    iget-boolean v0, p0, Lcom/oneplus/gl/EglObject;->m_IsReleased:Z

    if-eqz v0, :cond_1

    .line 89
    return-object v1

    .line 90
    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/gl/EglObject;->verifyAccess()V

    .line 93
    invoke-static {p0}, Lcom/oneplus/gl/EglContextManager;->unregisterEglObject(Lcom/oneplus/gl/EglObject;)V

    .line 96
    invoke-virtual {p0}, Lcom/oneplus/gl/EglObject;->onRelease()V

    .line 99
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/gl/EglObject;->m_IsReleased:Z

    .line 102
    return-object v1
.end method


# virtual methods
.method public getObjectId()I
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    return v0
.end method

.method public final isEglContextReady()Z
    .locals 1

    .prologue
    .line 43
    invoke-static {}, Lcom/oneplus/gl/EglContextManager;->isEglContextReady()Z

    move-result v0

    return v0
.end method

.method protected final isReleased()Z
    .locals 1

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/oneplus/gl/EglObject;->m_IsReleased:Z

    return v0
.end method

.method protected onEglContextDestroying()V
    .locals 0

    .prologue
    .line 60
    return-void
.end method

.method protected onEglContextReady()V
    .locals 0

    .prologue
    .line 67
    return-void
.end method

.method protected onRelease()V
    .locals 0

    .prologue
    .line 74
    return-void
.end method

.method protected final throwIfNotAccessible()V
    .locals 2

    .prologue
    .line 111
    invoke-virtual {p0}, Lcom/oneplus/gl/EglObject;->verifyAccess()V

    .line 112
    iget-boolean v0, p0, Lcom/oneplus/gl/EglObject;->m_IsReleased:Z

    if-eqz v0, :cond_0

    .line 113
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Object has been released"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 109
    :cond_0
    return-void
.end method

.method protected final verifyReleaseState()V
    .locals 2

    .prologue
    .line 122
    iget-boolean v0, p0, Lcom/oneplus/gl/EglObject;->m_IsReleased:Z

    if-eqz v0, :cond_0

    .line 123
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Object has been released."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 120
    :cond_0
    return-void
.end method
