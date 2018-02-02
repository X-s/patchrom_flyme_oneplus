.class public final enum Lcom/oneplus/camera/ui/PreviewCover$Style;
.super Ljava/lang/Enum;
.source "PreviewCover.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/camera/ui/PreviewCover;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Style"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oneplus/camera/ui/PreviewCover$Style;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oneplus/camera/ui/PreviewCover$Style;

.field public static final enum COLOR_BLACK:Lcom/oneplus/camera/ui/PreviewCover$Style;

.field public static final enum EMPTY:Lcom/oneplus/camera/ui/PreviewCover$Style;

.field public static final enum PREVIEW_BLUR:Lcom/oneplus/camera/ui/PreviewCover$Style;

.field public static final enum PREVIEW_BLUR_FLIP:Lcom/oneplus/camera/ui/PreviewCover$Style;

.field public static final enum PREVIEW_NORMAL:Lcom/oneplus/camera/ui/PreviewCover$Style;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 34
    new-instance v0, Lcom/oneplus/camera/ui/PreviewCover$Style;

    const-string/jumbo v1, "COLOR_BLACK"

    invoke-direct {v0, v1, v2}, Lcom/oneplus/camera/ui/PreviewCover$Style;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/camera/ui/PreviewCover$Style;->COLOR_BLACK:Lcom/oneplus/camera/ui/PreviewCover$Style;

    .line 35
    new-instance v0, Lcom/oneplus/camera/ui/PreviewCover$Style;

    const-string/jumbo v1, "EMPTY"

    invoke-direct {v0, v1, v3}, Lcom/oneplus/camera/ui/PreviewCover$Style;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/camera/ui/PreviewCover$Style;->EMPTY:Lcom/oneplus/camera/ui/PreviewCover$Style;

    .line 36
    new-instance v0, Lcom/oneplus/camera/ui/PreviewCover$Style;

    const-string/jumbo v1, "PREVIEW_BLUR"

    invoke-direct {v0, v1, v4}, Lcom/oneplus/camera/ui/PreviewCover$Style;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/camera/ui/PreviewCover$Style;->PREVIEW_BLUR:Lcom/oneplus/camera/ui/PreviewCover$Style;

    .line 37
    new-instance v0, Lcom/oneplus/camera/ui/PreviewCover$Style;

    const-string/jumbo v1, "PREVIEW_BLUR_FLIP"

    invoke-direct {v0, v1, v5}, Lcom/oneplus/camera/ui/PreviewCover$Style;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/camera/ui/PreviewCover$Style;->PREVIEW_BLUR_FLIP:Lcom/oneplus/camera/ui/PreviewCover$Style;

    .line 38
    new-instance v0, Lcom/oneplus/camera/ui/PreviewCover$Style;

    const-string/jumbo v1, "PREVIEW_NORMAL"

    invoke-direct {v0, v1, v6}, Lcom/oneplus/camera/ui/PreviewCover$Style;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/camera/ui/PreviewCover$Style;->PREVIEW_NORMAL:Lcom/oneplus/camera/ui/PreviewCover$Style;

    .line 32
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/oneplus/camera/ui/PreviewCover$Style;

    sget-object v1, Lcom/oneplus/camera/ui/PreviewCover$Style;->COLOR_BLACK:Lcom/oneplus/camera/ui/PreviewCover$Style;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oneplus/camera/ui/PreviewCover$Style;->EMPTY:Lcom/oneplus/camera/ui/PreviewCover$Style;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oneplus/camera/ui/PreviewCover$Style;->PREVIEW_BLUR:Lcom/oneplus/camera/ui/PreviewCover$Style;

    aput-object v1, v0, v4

    sget-object v1, Lcom/oneplus/camera/ui/PreviewCover$Style;->PREVIEW_BLUR_FLIP:Lcom/oneplus/camera/ui/PreviewCover$Style;

    aput-object v1, v0, v5

    sget-object v1, Lcom/oneplus/camera/ui/PreviewCover$Style;->PREVIEW_NORMAL:Lcom/oneplus/camera/ui/PreviewCover$Style;

    aput-object v1, v0, v6

    sput-object v0, Lcom/oneplus/camera/ui/PreviewCover$Style;->$VALUES:[Lcom/oneplus/camera/ui/PreviewCover$Style;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oneplus/camera/ui/PreviewCover$Style;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 32
    const-class v0, Lcom/oneplus/camera/ui/PreviewCover$Style;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/ui/PreviewCover$Style;

    return-object v0
.end method

.method public static values()[Lcom/oneplus/camera/ui/PreviewCover$Style;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/oneplus/camera/ui/PreviewCover$Style;->$VALUES:[Lcom/oneplus/camera/ui/PreviewCover$Style;

    return-object v0
.end method
