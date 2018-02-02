.class public final enum Lcom/oneplus/camera/media/MediaType;
.super Ljava/lang/Enum;
.source "MediaType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oneplus/camera/media/MediaType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oneplus/camera/media/MediaType;

.field public static final enum PHOTO:Lcom/oneplus/camera/media/MediaType;

.field public static final enum VIDEO:Lcom/oneplus/camera/media/MediaType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 8
    new-instance v0, Lcom/oneplus/camera/media/MediaType;

    const-string/jumbo v1, "PHOTO"

    invoke-direct {v0, v1, v2}, Lcom/oneplus/camera/media/MediaType;-><init>(Ljava/lang/String;I)V

    .line 11
    sput-object v0, Lcom/oneplus/camera/media/MediaType;->PHOTO:Lcom/oneplus/camera/media/MediaType;

    .line 12
    new-instance v0, Lcom/oneplus/camera/media/MediaType;

    const-string/jumbo v1, "VIDEO"

    invoke-direct {v0, v1, v3}, Lcom/oneplus/camera/media/MediaType;-><init>(Ljava/lang/String;I)V

    .line 15
    sput-object v0, Lcom/oneplus/camera/media/MediaType;->VIDEO:Lcom/oneplus/camera/media/MediaType;

    .line 6
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/oneplus/camera/media/MediaType;

    sget-object v1, Lcom/oneplus/camera/media/MediaType;->PHOTO:Lcom/oneplus/camera/media/MediaType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oneplus/camera/media/MediaType;->VIDEO:Lcom/oneplus/camera/media/MediaType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/oneplus/camera/media/MediaType;->$VALUES:[Lcom/oneplus/camera/media/MediaType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oneplus/camera/media/MediaType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 6
    const-class v0, Lcom/oneplus/camera/media/MediaType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/media/MediaType;

    return-object v0
.end method

.method public static values()[Lcom/oneplus/camera/media/MediaType;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/oneplus/camera/media/MediaType;->$VALUES:[Lcom/oneplus/camera/media/MediaType;

    return-object v0
.end method
