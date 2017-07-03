.class public abstract Lcom/oneplus/gallery/crop/CropMode;
.super Ljava/lang/Object;
.source "CropMode.java"


# static fields
.field public static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    const-class v0, Lcom/oneplus/gallery/crop/CropMode;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/gallery/crop/CropMode;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getCropModeType()Lcom/oneplus/gallery/crop/CropModeType;
.end method

.method public abstract getCropRect(Landroid/graphics/Point;Landroid/graphics/Rect;Lcom/oneplus/gallery/crop/MovingPointType;Landroid/graphics/Rect;)Landroid/graphics/Rect;
.end method
