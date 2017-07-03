.class public final enum Lcom/oneplus/gallery/media/OPMediaManager$SpecialDirectoryType;
.super Ljava/lang/Enum;
.source "OPMediaManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery/media/OPMediaManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SpecialDirectoryType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oneplus/gallery/media/OPMediaManager$SpecialDirectoryType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oneplus/gallery/media/OPMediaManager$SpecialDirectoryType;

.field public static final enum APPLICATION_DATA:Lcom/oneplus/gallery/media/OPMediaManager$SpecialDirectoryType;

.field public static final enum CAMERA:Lcom/oneplus/gallery/media/OPMediaManager$SpecialDirectoryType;

.field public static final enum MUSIC:Lcom/oneplus/gallery/media/OPMediaManager$SpecialDirectoryType;

.field public static final enum SCREENSHOT:Lcom/oneplus/gallery/media/OPMediaManager$SpecialDirectoryType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 76
    new-instance v0, Lcom/oneplus/gallery/media/OPMediaManager$SpecialDirectoryType;

    const-string v1, "APPLICATION_DATA"

    invoke-direct {v0, v1, v2}, Lcom/oneplus/gallery/media/OPMediaManager$SpecialDirectoryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/gallery/media/OPMediaManager$SpecialDirectoryType;->APPLICATION_DATA:Lcom/oneplus/gallery/media/OPMediaManager$SpecialDirectoryType;

    .line 80
    new-instance v0, Lcom/oneplus/gallery/media/OPMediaManager$SpecialDirectoryType;

    const-string v1, "SCREENSHOT"

    invoke-direct {v0, v1, v3}, Lcom/oneplus/gallery/media/OPMediaManager$SpecialDirectoryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/gallery/media/OPMediaManager$SpecialDirectoryType;->SCREENSHOT:Lcom/oneplus/gallery/media/OPMediaManager$SpecialDirectoryType;

    .line 84
    new-instance v0, Lcom/oneplus/gallery/media/OPMediaManager$SpecialDirectoryType;

    const-string v1, "CAMERA"

    invoke-direct {v0, v1, v4}, Lcom/oneplus/gallery/media/OPMediaManager$SpecialDirectoryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/gallery/media/OPMediaManager$SpecialDirectoryType;->CAMERA:Lcom/oneplus/gallery/media/OPMediaManager$SpecialDirectoryType;

    .line 88
    new-instance v0, Lcom/oneplus/gallery/media/OPMediaManager$SpecialDirectoryType;

    const-string v1, "MUSIC"

    invoke-direct {v0, v1, v5}, Lcom/oneplus/gallery/media/OPMediaManager$SpecialDirectoryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/gallery/media/OPMediaManager$SpecialDirectoryType;->MUSIC:Lcom/oneplus/gallery/media/OPMediaManager$SpecialDirectoryType;

    .line 71
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/oneplus/gallery/media/OPMediaManager$SpecialDirectoryType;

    sget-object v1, Lcom/oneplus/gallery/media/OPMediaManager$SpecialDirectoryType;->APPLICATION_DATA:Lcom/oneplus/gallery/media/OPMediaManager$SpecialDirectoryType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oneplus/gallery/media/OPMediaManager$SpecialDirectoryType;->SCREENSHOT:Lcom/oneplus/gallery/media/OPMediaManager$SpecialDirectoryType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oneplus/gallery/media/OPMediaManager$SpecialDirectoryType;->CAMERA:Lcom/oneplus/gallery/media/OPMediaManager$SpecialDirectoryType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/oneplus/gallery/media/OPMediaManager$SpecialDirectoryType;->MUSIC:Lcom/oneplus/gallery/media/OPMediaManager$SpecialDirectoryType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/oneplus/gallery/media/OPMediaManager$SpecialDirectoryType;->$VALUES:[Lcom/oneplus/gallery/media/OPMediaManager$SpecialDirectoryType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 71
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oneplus/gallery/media/OPMediaManager$SpecialDirectoryType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 71
    const-class v0, Lcom/oneplus/gallery/media/OPMediaManager$SpecialDirectoryType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery/media/OPMediaManager$SpecialDirectoryType;

    return-object v0
.end method

.method public static values()[Lcom/oneplus/gallery/media/OPMediaManager$SpecialDirectoryType;
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lcom/oneplus/gallery/media/OPMediaManager$SpecialDirectoryType;->$VALUES:[Lcom/oneplus/gallery/media/OPMediaManager$SpecialDirectoryType;

    invoke-virtual {v0}, [Lcom/oneplus/gallery/media/OPMediaManager$SpecialDirectoryType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oneplus/gallery/media/OPMediaManager$SpecialDirectoryType;

    return-object v0
.end method
