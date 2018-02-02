.class public final enum Lcom/oneplus/gallery/media/MediaSet$Type;
.super Ljava/lang/Enum;
.source "MediaSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery/media/MediaSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oneplus/gallery/media/MediaSet$Type;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum APPLICATION:Lcom/oneplus/gallery/media/MediaSet$Type;

.field private static final synthetic ENUM$VALUES:[Lcom/oneplus/gallery/media/MediaSet$Type;

.field public static final enum OTHER:Lcom/oneplus/gallery/media/MediaSet$Type;

.field public static final enum SYSTEM:Lcom/oneplus/gallery/media/MediaSet$Type;

.field public static final enum USER:Lcom/oneplus/gallery/media/MediaSet$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 74
    new-instance v0, Lcom/oneplus/gallery/media/MediaSet$Type;

    const-string/jumbo v1, "SYSTEM"

    invoke-direct {v0, v1, v2}, Lcom/oneplus/gallery/media/MediaSet$Type;-><init>(Ljava/lang/String;I)V

    .line 77
    sput-object v0, Lcom/oneplus/gallery/media/MediaSet$Type;->SYSTEM:Lcom/oneplus/gallery/media/MediaSet$Type;

    .line 78
    new-instance v0, Lcom/oneplus/gallery/media/MediaSet$Type;

    const-string/jumbo v1, "USER"

    invoke-direct {v0, v1, v3}, Lcom/oneplus/gallery/media/MediaSet$Type;-><init>(Ljava/lang/String;I)V

    .line 81
    sput-object v0, Lcom/oneplus/gallery/media/MediaSet$Type;->USER:Lcom/oneplus/gallery/media/MediaSet$Type;

    .line 82
    new-instance v0, Lcom/oneplus/gallery/media/MediaSet$Type;

    const-string/jumbo v1, "APPLICATION"

    invoke-direct {v0, v1, v4}, Lcom/oneplus/gallery/media/MediaSet$Type;-><init>(Ljava/lang/String;I)V

    .line 85
    sput-object v0, Lcom/oneplus/gallery/media/MediaSet$Type;->APPLICATION:Lcom/oneplus/gallery/media/MediaSet$Type;

    .line 86
    new-instance v0, Lcom/oneplus/gallery/media/MediaSet$Type;

    const-string/jumbo v1, "OTHER"

    invoke-direct {v0, v1, v5}, Lcom/oneplus/gallery/media/MediaSet$Type;-><init>(Ljava/lang/String;I)V

    .line 89
    sput-object v0, Lcom/oneplus/gallery/media/MediaSet$Type;->OTHER:Lcom/oneplus/gallery/media/MediaSet$Type;

    const/4 v0, 0x4

    .line 72
    new-array v0, v0, [Lcom/oneplus/gallery/media/MediaSet$Type;

    sget-object v1, Lcom/oneplus/gallery/media/MediaSet$Type;->SYSTEM:Lcom/oneplus/gallery/media/MediaSet$Type;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oneplus/gallery/media/MediaSet$Type;->USER:Lcom/oneplus/gallery/media/MediaSet$Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oneplus/gallery/media/MediaSet$Type;->APPLICATION:Lcom/oneplus/gallery/media/MediaSet$Type;

    aput-object v1, v0, v4

    sget-object v1, Lcom/oneplus/gallery/media/MediaSet$Type;->OTHER:Lcom/oneplus/gallery/media/MediaSet$Type;

    aput-object v1, v0, v5

    sput-object v0, Lcom/oneplus/gallery/media/MediaSet$Type;->ENUM$VALUES:[Lcom/oneplus/gallery/media/MediaSet$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oneplus/gallery/media/MediaSet$Type;
    .locals 1

    .prologue
    const-class v0, Lcom/oneplus/gallery/media/MediaSet$Type;

    .line 1
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery/media/MediaSet$Type;

    return-object v0
.end method

.method public static values()[Lcom/oneplus/gallery/media/MediaSet$Type;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/oneplus/gallery/media/MediaSet$Type;->ENUM$VALUES:[Lcom/oneplus/gallery/media/MediaSet$Type;

    array-length v1, v0

    new-array v2, v1, [Lcom/oneplus/gallery/media/MediaSet$Type;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
