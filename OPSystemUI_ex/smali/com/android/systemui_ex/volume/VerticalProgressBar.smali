.class public Lcom/android/systemui_ex/volume/VerticalProgressBar;
.super Landroid/widget/ProgressBar;
.source "VerticalProgressBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui_ex/volume/VerticalProgressBar$OnProgressBarChangeListener;
    }
.end annotation


# instance fields
.field mOnProgressBarChangeListener:Lcom/android/systemui_ex/volume/VerticalProgressBar$OnProgressBarChangeListener;

.field private mRotation:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 20
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 21
    return-void
.end method


# virtual methods
.method protected declared-synchronized onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 37
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/systemui_ex/volume/VerticalProgressBar;->mRotation:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui_ex/volume/VerticalProgressBar;->mRotation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 38
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/ProgressBar;->onMeasure(II)V

    .line 42
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui_ex/volume/VerticalProgressBar;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/systemui_ex/volume/VerticalProgressBar;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui_ex/volume/VerticalProgressBar;->setMeasuredDimension(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    monitor-exit p0

    return-void

    .line 40
    :cond_1
    :try_start_1
    invoke-super {p0, p2, p1}, Landroid/widget/ProgressBar;->onMeasure(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 37
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setOnProgressBarChangeListener(Lcom/android/systemui_ex/volume/VerticalProgressBar$OnProgressBarChangeListener;)V
    .locals 0
    .param p1, "l"    # Lcom/android/systemui_ex/volume/VerticalProgressBar$OnProgressBarChangeListener;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/android/systemui_ex/volume/VerticalProgressBar;->mOnProgressBarChangeListener:Lcom/android/systemui_ex/volume/VerticalProgressBar$OnProgressBarChangeListener;

    .line 33
    return-void
.end method

.method public setViewRotation(I)V
    .locals 0
    .param p1, "rotation"    # I

    .prologue
    .line 46
    iput p1, p0, Lcom/android/systemui_ex/volume/VerticalProgressBar;->mRotation:I

    .line 47
    return-void
.end method
