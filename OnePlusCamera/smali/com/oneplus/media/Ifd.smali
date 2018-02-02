.class public final enum Lcom/oneplus/media/Ifd;
.super Ljava/lang/Enum;
.source "Ifd.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oneplus/media/Ifd;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oneplus/media/Ifd;

.field public static final enum EXIF:Lcom/oneplus/media/Ifd;

.field public static final enum GPS:Lcom/oneplus/media/Ifd;

.field public static final enum IFD_0:Lcom/oneplus/media/Ifd;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 8
    new-instance v0, Lcom/oneplus/media/Ifd;

    const-string/jumbo v1, "IFD_0"

    invoke-direct {v0, v1, v2}, Lcom/oneplus/media/Ifd;-><init>(Ljava/lang/String;I)V

    .line 11
    sput-object v0, Lcom/oneplus/media/Ifd;->IFD_0:Lcom/oneplus/media/Ifd;

    .line 12
    new-instance v0, Lcom/oneplus/media/Ifd;

    const-string/jumbo v1, "EXIF"

    invoke-direct {v0, v1, v3}, Lcom/oneplus/media/Ifd;-><init>(Ljava/lang/String;I)V

    .line 15
    sput-object v0, Lcom/oneplus/media/Ifd;->EXIF:Lcom/oneplus/media/Ifd;

    .line 16
    new-instance v0, Lcom/oneplus/media/Ifd;

    const-string/jumbo v1, "GPS"

    invoke-direct {v0, v1, v4}, Lcom/oneplus/media/Ifd;-><init>(Ljava/lang/String;I)V

    .line 19
    sput-object v0, Lcom/oneplus/media/Ifd;->GPS:Lcom/oneplus/media/Ifd;

    .line 6
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/oneplus/media/Ifd;

    sget-object v1, Lcom/oneplus/media/Ifd;->IFD_0:Lcom/oneplus/media/Ifd;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oneplus/media/Ifd;->EXIF:Lcom/oneplus/media/Ifd;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oneplus/media/Ifd;->GPS:Lcom/oneplus/media/Ifd;

    aput-object v1, v0, v4

    sput-object v0, Lcom/oneplus/media/Ifd;->$VALUES:[Lcom/oneplus/media/Ifd;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oneplus/media/Ifd;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 6
    const-class v0, Lcom/oneplus/media/Ifd;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oneplus/media/Ifd;

    return-object v0
.end method

.method public static values()[Lcom/oneplus/media/Ifd;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/oneplus/media/Ifd;->$VALUES:[Lcom/oneplus/media/Ifd;

    return-object v0
.end method
