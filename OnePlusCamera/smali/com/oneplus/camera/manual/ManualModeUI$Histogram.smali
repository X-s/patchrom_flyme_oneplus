.class public Lcom/oneplus/camera/manual/ManualModeUI$Histogram;
.super Ljava/lang/Object;
.source "ManualModeUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/camera/manual/ManualModeUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Histogram"
.end annotation


# instance fields
.field public Y:[I

.field public totalPixelCount:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 2968
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2966
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/camera/manual/ManualModeUI$Histogram;->totalPixelCount:I

    .line 2973
    const/16 v0, 0x100

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/oneplus/camera/manual/ManualModeUI$Histogram;->Y:[I

    .line 2968
    return-void
.end method
