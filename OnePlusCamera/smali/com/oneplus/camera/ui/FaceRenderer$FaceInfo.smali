.class final Lcom/oneplus/camera/ui/FaceRenderer$FaceInfo;
.super Ljava/lang/Object;
.source "FaceRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/camera/ui/FaceRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FaceInfo"
.end annotation


# instance fields
.field public final currentBounds:Landroid/graphics/RectF;

.field public face:Lcom/oneplus/camera/Camera$Face;

.field public startTime:J


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/oneplus/camera/ui/FaceRenderer$FaceInfo;->currentBounds:Landroid/graphics/RectF;

    .line 50
    return-void
.end method

.method synthetic constructor <init>(Lcom/oneplus/camera/ui/FaceRenderer$FaceInfo;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/oneplus/camera/ui/FaceRenderer$FaceInfo;-><init>()V

    return-void
.end method
