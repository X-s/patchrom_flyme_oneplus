.class public final enum Lcom/oneplus/settings/storage/OPMediaProvider$FileType;
.super Ljava/lang/Enum;
.source "OPMediaProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/storage/OPMediaProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FileType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oneplus/settings/storage/OPMediaProvider$FileType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oneplus/settings/storage/OPMediaProvider$FileType;

.field public static final enum All:Lcom/oneplus/settings/storage/OPMediaProvider$FileType;

.field public static final enum Audio:Lcom/oneplus/settings/storage/OPMediaProvider$FileType;

.field public static final enum Image:Lcom/oneplus/settings/storage/OPMediaProvider$FileType;

.field public static final enum Video:Lcom/oneplus/settings/storage/OPMediaProvider$FileType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 90
    new-instance v0, Lcom/oneplus/settings/storage/OPMediaProvider$FileType;

    const-string/jumbo v1, "Image"

    invoke-direct {v0, v1, v2}, Lcom/oneplus/settings/storage/OPMediaProvider$FileType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/settings/storage/OPMediaProvider$FileType;->Image:Lcom/oneplus/settings/storage/OPMediaProvider$FileType;

    new-instance v0, Lcom/oneplus/settings/storage/OPMediaProvider$FileType;

    const-string/jumbo v1, "Audio"

    invoke-direct {v0, v1, v3}, Lcom/oneplus/settings/storage/OPMediaProvider$FileType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/settings/storage/OPMediaProvider$FileType;->Audio:Lcom/oneplus/settings/storage/OPMediaProvider$FileType;

    new-instance v0, Lcom/oneplus/settings/storage/OPMediaProvider$FileType;

    const-string/jumbo v1, "Video"

    invoke-direct {v0, v1, v4}, Lcom/oneplus/settings/storage/OPMediaProvider$FileType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/settings/storage/OPMediaProvider$FileType;->Video:Lcom/oneplus/settings/storage/OPMediaProvider$FileType;

    new-instance v0, Lcom/oneplus/settings/storage/OPMediaProvider$FileType;

    const-string/jumbo v1, "All"

    invoke-direct {v0, v1, v5}, Lcom/oneplus/settings/storage/OPMediaProvider$FileType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/settings/storage/OPMediaProvider$FileType;->All:Lcom/oneplus/settings/storage/OPMediaProvider$FileType;

    .line 89
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/oneplus/settings/storage/OPMediaProvider$FileType;

    sget-object v1, Lcom/oneplus/settings/storage/OPMediaProvider$FileType;->Image:Lcom/oneplus/settings/storage/OPMediaProvider$FileType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oneplus/settings/storage/OPMediaProvider$FileType;->Audio:Lcom/oneplus/settings/storage/OPMediaProvider$FileType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oneplus/settings/storage/OPMediaProvider$FileType;->Video:Lcom/oneplus/settings/storage/OPMediaProvider$FileType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/oneplus/settings/storage/OPMediaProvider$FileType;->All:Lcom/oneplus/settings/storage/OPMediaProvider$FileType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/oneplus/settings/storage/OPMediaProvider$FileType;->$VALUES:[Lcom/oneplus/settings/storage/OPMediaProvider$FileType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 89
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oneplus/settings/storage/OPMediaProvider$FileType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 89
    const-class v0, Lcom/oneplus/settings/storage/OPMediaProvider$FileType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/storage/OPMediaProvider$FileType;

    return-object v0
.end method

.method public static values()[Lcom/oneplus/settings/storage/OPMediaProvider$FileType;
    .locals 1

    .prologue
    .line 89
    sget-object v0, Lcom/oneplus/settings/storage/OPMediaProvider$FileType;->$VALUES:[Lcom/oneplus/settings/storage/OPMediaProvider$FileType;

    return-object v0
.end method
