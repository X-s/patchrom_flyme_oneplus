.class public Lcom/oneplus/camera/manual/KnobInfo;
.super Ljava/lang/Object;
.source "KnobInfo.java"


# instance fields
.field public final angleMax:I

.field public final angleMin:I

.field public final autoAngle:I

.field public final tickMax:I

.field public final tickMin:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 6
    .param p1, "angleMin"    # I
    .param p2, "angleMax"    # I
    .param p3, "tickMin"    # I
    .param p4, "tickMax"    # I

    .prologue
    .line 13
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/camera/manual/KnobInfo;-><init>(IIIII)V

    .line 14
    return-void
.end method

.method public constructor <init>(IIIII)V
    .locals 0
    .param p1, "angleMin"    # I
    .param p2, "angleMax"    # I
    .param p3, "tickMin"    # I
    .param p4, "tickMax"    # I
    .param p5, "autoAngle"    # I

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput p2, p0, Lcom/oneplus/camera/manual/KnobInfo;->angleMax:I

    .line 18
    iput p1, p0, Lcom/oneplus/camera/manual/KnobInfo;->angleMin:I

    .line 19
    iput p4, p0, Lcom/oneplus/camera/manual/KnobInfo;->tickMax:I

    .line 20
    iput p3, p0, Lcom/oneplus/camera/manual/KnobInfo;->tickMin:I

    .line 21
    iput p5, p0, Lcom/oneplus/camera/manual/KnobInfo;->autoAngle:I

    .line 22
    return-void
.end method
