.class public Lcom/oneplus/camera/ui/GestureScrollView;
.super Landroid/widget/ScrollView;
.source "GestureScrollView.java"


# instance fields
.field private m_GestureDetector:Lcom/oneplus/camera/ui/GestureDetector;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 19
    invoke-direct {p0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 30
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 31
    iget-object v0, p0, Lcom/oneplus/camera/ui/GestureScrollView;->m_GestureDetector:Lcom/oneplus/camera/ui/GestureDetector;

    if-eqz v0, :cond_0

    .line 32
    iget-object v0, p0, Lcom/oneplus/camera/ui/GestureScrollView;->m_GestureDetector:Lcom/oneplus/camera/ui/GestureDetector;

    invoke-interface {v0, p1}, Lcom/oneplus/camera/ui/GestureDetector;->handleTouchEvent(Landroid/view/MotionEvent;)V

    .line 33
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public setGestureDetector(Lcom/oneplus/camera/ui/GestureDetector;)V
    .locals 0
    .param p1, "gestureDetector"    # Lcom/oneplus/camera/ui/GestureDetector;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/oneplus/camera/ui/GestureScrollView;->m_GestureDetector:Lcom/oneplus/camera/ui/GestureDetector;

    .line 36
    return-void
.end method
