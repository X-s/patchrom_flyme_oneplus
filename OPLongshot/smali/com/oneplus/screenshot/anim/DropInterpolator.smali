.class public abstract Lcom/oneplus/screenshot/anim/DropInterpolator;
.super Lcom/oneplus/screenshot/anim/BaseInterpolator;
.source "DropInterpolator.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DropInterpolator"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Lcom/oneplus/screenshot/anim/BaseInterpolator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 15
    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 4
    .param p1, "x"    # F

    .prologue
    const/4 v0, 0x0

    .line 22
    iget v1, p0, Lcom/oneplus/screenshot/anim/DropInterpolator;->mDurationFactor:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    cmpg-float v1, p1, v1

    if-gez v1, :cond_0

    .line 29
    :goto_0
    return v0

    .line 25
    :cond_0
    iget v1, p0, Lcom/oneplus/screenshot/anim/DropInterpolator;->mDurationFactor:F

    sub-float v1, p1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    iget v3, p0, Lcom/oneplus/screenshot/anim/DropInterpolator;->mDurationFactor:F

    sub-float/2addr v2, v3

    div-float/2addr v1, v2

    iget v2, p0, Lcom/oneplus/screenshot/anim/DropInterpolator;->mFactor:F

    mul-float p1, v1, v2

    .line 26
    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    .line 27
    const/4 p1, 0x0

    :cond_1
    move v0, p1

    .line 29
    goto :goto_0
.end method
