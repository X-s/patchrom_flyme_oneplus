.class public Lcom/oneplus/tuner/view/CustomConfigScrollView;
.super Landroid/widget/ScrollView;
.source "CustomConfigScrollView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SettingScrollView"


# instance fields
.field private mDispatchTouchEvent:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 28
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/tuner/view/CustomConfigScrollView;->mDispatchTouchEvent:Z

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/tuner/view/CustomConfigScrollView;->mDispatchTouchEvent:Z

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 14
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 16
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/tuner/view/CustomConfigScrollView;->mDispatchTouchEvent:Z

    .line 17
    return-void
.end method


# virtual methods
.method public acceptTouchEvent()V
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/tuner/view/CustomConfigScrollView;->mDispatchTouchEvent:Z

    .line 48
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/oneplus/tuner/view/CustomConfigScrollView;->mDispatchTouchEvent:Z

    if-eqz v0, :cond_0

    .line 37
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 39
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public preventTouchEvent()V
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/tuner/view/CustomConfigScrollView;->mDispatchTouchEvent:Z

    .line 44
    return-void
.end method
