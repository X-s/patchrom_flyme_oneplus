.class public Lcom/oneplus/camera/ui/KeyEventArgs;
.super Lcom/oneplus/base/EventArgs;
.source "KeyEventArgs.java"


# instance fields
.field private m_KeyCode:I

.field private m_KeyEvent:Landroid/view/KeyEvent;

.field private m_RepeatCount:I


# direct methods
.method public constructor <init>(Landroid/view/KeyEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/oneplus/base/EventArgs;-><init>()V

    .line 24
    if-nez p1, :cond_0

    .line 25
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "No key event"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 26
    :cond_0
    iput-object p1, p0, Lcom/oneplus/camera/ui/KeyEventArgs;->m_KeyEvent:Landroid/view/KeyEvent;

    .line 27
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    iput v0, p0, Lcom/oneplus/camera/ui/KeyEventArgs;->m_KeyCode:I

    .line 28
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    iput v0, p0, Lcom/oneplus/camera/ui/KeyEventArgs;->m_RepeatCount:I

    .line 22
    return-void
.end method


# virtual methods
.method public final getKeyCode()I
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lcom/oneplus/camera/ui/KeyEventArgs;->m_KeyCode:I

    return v0
.end method

.method public final getKeyEvent()Landroid/view/KeyEvent;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/oneplus/camera/ui/KeyEventArgs;->m_KeyEvent:Landroid/view/KeyEvent;

    return-object v0
.end method

.method public final getRepeatCount()I
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lcom/oneplus/camera/ui/KeyEventArgs;->m_RepeatCount:I

    return v0
.end method
