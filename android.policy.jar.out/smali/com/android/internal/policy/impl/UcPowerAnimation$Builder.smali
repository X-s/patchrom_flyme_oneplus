.class public Lcom/android/internal/policy/impl/UcPowerAnimation$Builder;
.super Ljava/lang/Object;
.source "UcPowerAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/UcPowerAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field centerColor:I

.field circleScale:F

.field outlineColor:I

.field ringColor:I

.field ringWidth:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 260
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 265
    const/high16 v0, 0x3f400000    # 0.75f

    iput v0, p0, Lcom/android/internal/policy/impl/UcPowerAnimation$Builder;->circleScale:F

    return-void
.end method


# virtual methods
.method public create()Lcom/android/internal/policy/impl/UcPowerAnimation;
    .locals 6

    .prologue
    .line 293
    new-instance v0, Lcom/android/internal/policy/impl/UcPowerAnimation;

    iget v1, p0, Lcom/android/internal/policy/impl/UcPowerAnimation$Builder;->ringWidth:I

    iget v2, p0, Lcom/android/internal/policy/impl/UcPowerAnimation$Builder;->circleScale:F

    iget v3, p0, Lcom/android/internal/policy/impl/UcPowerAnimation$Builder;->outlineColor:I

    iget v4, p0, Lcom/android/internal/policy/impl/UcPowerAnimation$Builder;->ringColor:I

    iget v5, p0, Lcom/android/internal/policy/impl/UcPowerAnimation$Builder;->centerColor:I

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/UcPowerAnimation;-><init>(IFIII)V

    return-object v0
.end method

.method public setCenterColor(I)Lcom/android/internal/policy/impl/UcPowerAnimation$Builder;
    .locals 0
    .param p1, "centerColor"    # I

    .prologue
    .line 283
    iput p1, p0, Lcom/android/internal/policy/impl/UcPowerAnimation$Builder;->centerColor:I

    .line 284
    return-object p0
.end method

.method public setInnerCircleScale(F)Lcom/android/internal/policy/impl/UcPowerAnimation$Builder;
    .locals 0
    .param p1, "circleScale"    # F

    .prologue
    .line 288
    iput p1, p0, Lcom/android/internal/policy/impl/UcPowerAnimation$Builder;->circleScale:F

    .line 289
    return-object p0
.end method

.method public setOutlineColor(I)Lcom/android/internal/policy/impl/UcPowerAnimation$Builder;
    .locals 0
    .param p1, "outlineColor"    # I

    .prologue
    .line 273
    iput p1, p0, Lcom/android/internal/policy/impl/UcPowerAnimation$Builder;->outlineColor:I

    .line 274
    return-object p0
.end method

.method public setRingColor(I)Lcom/android/internal/policy/impl/UcPowerAnimation$Builder;
    .locals 0
    .param p1, "ringColor"    # I

    .prologue
    .line 278
    iput p1, p0, Lcom/android/internal/policy/impl/UcPowerAnimation$Builder;->ringColor:I

    .line 279
    return-object p0
.end method

.method public setRingWidth(I)Lcom/android/internal/policy/impl/UcPowerAnimation$Builder;
    .locals 0
    .param p1, "ringWidth"    # I

    .prologue
    .line 268
    iput p1, p0, Lcom/android/internal/policy/impl/UcPowerAnimation$Builder;->ringWidth:I

    .line 269
    return-object p0
.end method
