.class public final enum Lcom/oneplus/gallery/media/MediaSetList$Comparator;
.super Ljava/lang/Enum;
.source "MediaSetList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery/media/MediaSetList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Comparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oneplus/gallery/media/MediaSetList$Comparator;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/oneplus/gallery/media/MediaSetList$Comparator;

.field public static final enum SYSTEM_ALBUM_DIRECTORY:Lcom/oneplus/gallery/media/MediaSetList$Comparator;

.field public static final enum SYSTEM_DATE:Lcom/oneplus/gallery/media/MediaSetList$Comparator;

.field public static final enum SYSTEM_NAME:Lcom/oneplus/gallery/media/MediaSetList$Comparator;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 58
    new-instance v0, Lcom/oneplus/gallery/media/MediaSetList$Comparator;

    const-string/jumbo v1, "SYSTEM_ALBUM_DIRECTORY"

    invoke-direct {v0, v1, v2}, Lcom/oneplus/gallery/media/MediaSetList$Comparator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/gallery/media/MediaSetList$Comparator;->SYSTEM_ALBUM_DIRECTORY:Lcom/oneplus/gallery/media/MediaSetList$Comparator;

    .line 59
    new-instance v0, Lcom/oneplus/gallery/media/MediaSetList$Comparator;

    const-string/jumbo v1, "SYSTEM_DATE"

    invoke-direct {v0, v1, v3}, Lcom/oneplus/gallery/media/MediaSetList$Comparator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/gallery/media/MediaSetList$Comparator;->SYSTEM_DATE:Lcom/oneplus/gallery/media/MediaSetList$Comparator;

    .line 60
    new-instance v0, Lcom/oneplus/gallery/media/MediaSetList$Comparator;

    const-string/jumbo v1, "SYSTEM_NAME"

    invoke-direct {v0, v1, v4}, Lcom/oneplus/gallery/media/MediaSetList$Comparator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/gallery/media/MediaSetList$Comparator;->SYSTEM_NAME:Lcom/oneplus/gallery/media/MediaSetList$Comparator;

    const/4 v0, 0x3

    .line 56
    new-array v0, v0, [Lcom/oneplus/gallery/media/MediaSetList$Comparator;

    sget-object v1, Lcom/oneplus/gallery/media/MediaSetList$Comparator;->SYSTEM_ALBUM_DIRECTORY:Lcom/oneplus/gallery/media/MediaSetList$Comparator;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oneplus/gallery/media/MediaSetList$Comparator;->SYSTEM_DATE:Lcom/oneplus/gallery/media/MediaSetList$Comparator;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oneplus/gallery/media/MediaSetList$Comparator;->SYSTEM_NAME:Lcom/oneplus/gallery/media/MediaSetList$Comparator;

    aput-object v1, v0, v4

    sput-object v0, Lcom/oneplus/gallery/media/MediaSetList$Comparator;->ENUM$VALUES:[Lcom/oneplus/gallery/media/MediaSetList$Comparator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oneplus/gallery/media/MediaSetList$Comparator;
    .locals 1

    .prologue
    const-class v0, Lcom/oneplus/gallery/media/MediaSetList$Comparator;

    .line 1
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery/media/MediaSetList$Comparator;

    return-object v0
.end method

.method public static values()[Lcom/oneplus/gallery/media/MediaSetList$Comparator;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/oneplus/gallery/media/MediaSetList$Comparator;->ENUM$VALUES:[Lcom/oneplus/gallery/media/MediaSetList$Comparator;

    array-length v1, v0

    new-array v2, v1, [Lcom/oneplus/gallery/media/MediaSetList$Comparator;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
