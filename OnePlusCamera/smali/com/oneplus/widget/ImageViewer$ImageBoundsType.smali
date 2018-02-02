.class public final enum Lcom/oneplus/widget/ImageViewer$ImageBoundsType;
.super Ljava/lang/Enum;
.source "ImageViewer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/widget/ImageViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ImageBoundsType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oneplus/widget/ImageViewer$ImageBoundsType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oneplus/widget/ImageViewer$ImageBoundsType;

.field public static final enum FIT_TO_VIEW:Lcom/oneplus/widget/ImageViewer$ImageBoundsType;

.field public static final enum USER:Lcom/oneplus/widget/ImageViewer$ImageBoundsType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 147
    new-instance v0, Lcom/oneplus/widget/ImageViewer$ImageBoundsType;

    const-string/jumbo v1, "FIT_TO_VIEW"

    invoke-direct {v0, v1, v2}, Lcom/oneplus/widget/ImageViewer$ImageBoundsType;-><init>(Ljava/lang/String;I)V

    .line 150
    sput-object v0, Lcom/oneplus/widget/ImageViewer$ImageBoundsType;->FIT_TO_VIEW:Lcom/oneplus/widget/ImageViewer$ImageBoundsType;

    .line 151
    new-instance v0, Lcom/oneplus/widget/ImageViewer$ImageBoundsType;

    const-string/jumbo v1, "USER"

    invoke-direct {v0, v1, v3}, Lcom/oneplus/widget/ImageViewer$ImageBoundsType;-><init>(Ljava/lang/String;I)V

    .line 154
    sput-object v0, Lcom/oneplus/widget/ImageViewer$ImageBoundsType;->USER:Lcom/oneplus/widget/ImageViewer$ImageBoundsType;

    .line 145
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/oneplus/widget/ImageViewer$ImageBoundsType;

    sget-object v1, Lcom/oneplus/widget/ImageViewer$ImageBoundsType;->FIT_TO_VIEW:Lcom/oneplus/widget/ImageViewer$ImageBoundsType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oneplus/widget/ImageViewer$ImageBoundsType;->USER:Lcom/oneplus/widget/ImageViewer$ImageBoundsType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/oneplus/widget/ImageViewer$ImageBoundsType;->$VALUES:[Lcom/oneplus/widget/ImageViewer$ImageBoundsType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 145
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oneplus/widget/ImageViewer$ImageBoundsType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 145
    const-class v0, Lcom/oneplus/widget/ImageViewer$ImageBoundsType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oneplus/widget/ImageViewer$ImageBoundsType;

    return-object v0
.end method

.method public static values()[Lcom/oneplus/widget/ImageViewer$ImageBoundsType;
    .locals 1

    .prologue
    .line 145
    sget-object v0, Lcom/oneplus/widget/ImageViewer$ImageBoundsType;->$VALUES:[Lcom/oneplus/widget/ImageViewer$ImageBoundsType;

    return-object v0
.end method
