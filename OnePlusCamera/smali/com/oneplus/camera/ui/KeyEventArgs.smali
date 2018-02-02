.class public Lcom/oneplus/camera/ui/KeyEventArgs;
.super Lcom/oneplus/base/EventArgs;
.source "KeyEventArgs.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private m_IsExternal:Z

.field private m_IsExternalMethod:Ljava/lang/reflect/Method;

.field private m_KeyCode:I

.field private m_KeyEvent:Landroid/view/KeyEvent;

.field private m_RepeatCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/oneplus/camera/ui/KeyEventArgs;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/camera/ui/KeyEventArgs;->TAG:Ljava/lang/String;

    .line 14
    return-void
.end method

.method public constructor <init>(Landroid/view/KeyEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/oneplus/base/EventArgs;-><init>()V

    .line 34
    if-nez p1, :cond_0

    .line 35
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "No key event"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 36
    :cond_0
    iput-object p1, p0, Lcom/oneplus/camera/ui/KeyEventArgs;->m_KeyEvent:Landroid/view/KeyEvent;

    .line 37
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    iput v0, p0, Lcom/oneplus/camera/ui/KeyEventArgs;->m_KeyCode:I

    .line 38
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    iput v0, p0, Lcom/oneplus/camera/ui/KeyEventArgs;->m_RepeatCount:I

    .line 32
    return-void
.end method


# virtual methods
.method public final getKeyCode()I
    .locals 1

    .prologue
    .line 78
    iget v0, p0, Lcom/oneplus/camera/ui/KeyEventArgs;->m_KeyCode:I

    return v0
.end method

.method public final getKeyEvent()Landroid/view/KeyEvent;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/oneplus/camera/ui/KeyEventArgs;->m_KeyEvent:Landroid/view/KeyEvent;

    return-object v0
.end method

.method public final getRepeatCount()I
    .locals 1

    .prologue
    .line 98
    iget v0, p0, Lcom/oneplus/camera/ui/KeyEventArgs;->m_RepeatCount:I

    return v0
.end method

.method public isExternal()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 48
    iget-object v2, p0, Lcom/oneplus/camera/ui/KeyEventArgs;->m_IsExternalMethod:Ljava/lang/reflect/Method;

    if-nez v2, :cond_0

    .line 53
    :try_start_0
    iget-object v2, p0, Lcom/oneplus/camera/ui/KeyEventArgs;->m_KeyEvent:Landroid/view/KeyEvent;

    invoke-virtual {v2}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v1

    .line 54
    .local v1, "inputDevice":Landroid/view/InputDevice;
    const-class v2, Landroid/view/InputDevice;

    const-string/jumbo v3, "isExternal"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/camera/ui/KeyEventArgs;->m_IsExternalMethod:Ljava/lang/reflect/Method;

    .line 57
    iget-object v2, p0, Lcom/oneplus/camera/ui/KeyEventArgs;->m_IsExternalMethod:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, p0, Lcom/oneplus/camera/ui/KeyEventArgs;->m_IsExternal:Z

    .line 59
    iget-boolean v2, p0, Lcom/oneplus/camera/ui/KeyEventArgs;->m_IsExternal:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 62
    .end local v1    # "inputDevice":Landroid/view/InputDevice;
    :catch_0
    move-exception v0

    .line 63
    .local v0, "ex":Ljava/lang/Throwable;
    sget-object v2, Lcom/oneplus/camera/ui/KeyEventArgs;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "isExternal - check KeyEvent failed"

    invoke-static {v2, v3, v0}, Lcom/oneplus/base/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 64
    return v5

    .line 68
    .end local v0    # "ex":Ljava/lang/Throwable;
    :cond_0
    iget-boolean v2, p0, Lcom/oneplus/camera/ui/KeyEventArgs;->m_IsExternal:Z

    return v2
.end method
