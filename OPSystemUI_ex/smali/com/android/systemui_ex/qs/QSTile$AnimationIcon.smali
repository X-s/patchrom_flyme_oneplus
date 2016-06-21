.class public Lcom/android/systemui_ex/qs/QSTile$AnimationIcon;
.super Lcom/android/systemui_ex/qs/QSTile$ResourceIcon;
.source "QSTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui_ex/qs/QSTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "AnimationIcon"
.end annotation


# instance fields
.field private mAllowAnimation:Z


# virtual methods
.method public getDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 383
    .local p0, "this":Lcom/android/systemui_ex/qs/QSTile$AnimationIcon;, "Lcom/android/systemui_ex/qs/QSTile<TTState;>.AnimationIcon;"
    invoke-super {p0, p1}, Lcom/android/systemui_ex/qs/QSTile$ResourceIcon;->getDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    .line 385
    .local v0, "d":Landroid/graphics/drawable/AnimatedVectorDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    .line 386
    iget-boolean v1, p0, Lcom/android/systemui_ex/qs/QSTile$AnimationIcon;->mAllowAnimation:Z

    if-eqz v1, :cond_0

    .line 387
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui_ex/qs/QSTile$AnimationIcon;->mAllowAnimation:Z

    .line 391
    :goto_0
    return-object v0

    .line 389
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->stop()V

    goto :goto_0
.end method

.method public setAllowAnimation(Z)V
    .locals 0
    .param p1, "allowAnimation"    # Z

    .prologue
    .line 377
    .local p0, "this":Lcom/android/systemui_ex/qs/QSTile$AnimationIcon;, "Lcom/android/systemui_ex/qs/QSTile<TTState;>.AnimationIcon;"
    iput-boolean p1, p0, Lcom/android/systemui_ex/qs/QSTile$AnimationIcon;->mAllowAnimation:Z

    .line 378
    return-void
.end method
