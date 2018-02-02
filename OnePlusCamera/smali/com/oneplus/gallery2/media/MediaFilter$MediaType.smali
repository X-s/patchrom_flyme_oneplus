.class public final enum Lcom/oneplus/gallery2/media/MediaFilter$MediaType;
.super Ljava/lang/Enum;
.source "MediaFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery2/media/MediaFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MediaType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oneplus/gallery2/media/MediaFilter$MediaType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum BURST:Lcom/oneplus/gallery2/media/MediaFilter$MediaType;

.field private static final synthetic ENUM$VALUES:[Lcom/oneplus/gallery2/media/MediaFilter$MediaType;

.field public static final enum PANORAMA:Lcom/oneplus/gallery2/media/MediaFilter$MediaType;

.field public static final enum PHOTO:Lcom/oneplus/gallery2/media/MediaFilter$MediaType;

.field public static final enum SLOW_MOTION:Lcom/oneplus/gallery2/media/MediaFilter$MediaType;

.field public static final enum TIME_LAPSE:Lcom/oneplus/gallery2/media/MediaFilter$MediaType;

.field public static final enum VIDEO:Lcom/oneplus/gallery2/media/MediaFilter$MediaType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 19
    new-instance v0, Lcom/oneplus/gallery2/media/MediaFilter$MediaType;

    const-string/jumbo v1, "PHOTO"

    invoke-direct {v0, v1, v3}, Lcom/oneplus/gallery2/media/MediaFilter$MediaType;-><init>(Ljava/lang/String;I)V

    .line 22
    sput-object v0, Lcom/oneplus/gallery2/media/MediaFilter$MediaType;->PHOTO:Lcom/oneplus/gallery2/media/MediaFilter$MediaType;

    .line 23
    new-instance v0, Lcom/oneplus/gallery2/media/MediaFilter$MediaType;

    const-string/jumbo v1, "BURST"

    invoke-direct {v0, v1, v4}, Lcom/oneplus/gallery2/media/MediaFilter$MediaType;-><init>(Ljava/lang/String;I)V

    .line 26
    sput-object v0, Lcom/oneplus/gallery2/media/MediaFilter$MediaType;->BURST:Lcom/oneplus/gallery2/media/MediaFilter$MediaType;

    .line 27
    new-instance v0, Lcom/oneplus/gallery2/media/MediaFilter$MediaType;

    const-string/jumbo v1, "PANORAMA"

    invoke-direct {v0, v1, v5}, Lcom/oneplus/gallery2/media/MediaFilter$MediaType;-><init>(Ljava/lang/String;I)V

    .line 30
    sput-object v0, Lcom/oneplus/gallery2/media/MediaFilter$MediaType;->PANORAMA:Lcom/oneplus/gallery2/media/MediaFilter$MediaType;

    .line 31
    new-instance v0, Lcom/oneplus/gallery2/media/MediaFilter$MediaType;

    const-string/jumbo v1, "VIDEO"

    invoke-direct {v0, v1, v6}, Lcom/oneplus/gallery2/media/MediaFilter$MediaType;-><init>(Ljava/lang/String;I)V

    .line 34
    sput-object v0, Lcom/oneplus/gallery2/media/MediaFilter$MediaType;->VIDEO:Lcom/oneplus/gallery2/media/MediaFilter$MediaType;

    .line 35
    new-instance v0, Lcom/oneplus/gallery2/media/MediaFilter$MediaType;

    const-string/jumbo v1, "TIME_LAPSE"

    invoke-direct {v0, v1, v7}, Lcom/oneplus/gallery2/media/MediaFilter$MediaType;-><init>(Ljava/lang/String;I)V

    .line 38
    sput-object v0, Lcom/oneplus/gallery2/media/MediaFilter$MediaType;->TIME_LAPSE:Lcom/oneplus/gallery2/media/MediaFilter$MediaType;

    .line 39
    new-instance v0, Lcom/oneplus/gallery2/media/MediaFilter$MediaType;

    const-string/jumbo v1, "SLOW_MOTION"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/oneplus/gallery2/media/MediaFilter$MediaType;-><init>(Ljava/lang/String;I)V

    .line 42
    sput-object v0, Lcom/oneplus/gallery2/media/MediaFilter$MediaType;->SLOW_MOTION:Lcom/oneplus/gallery2/media/MediaFilter$MediaType;

    const/4 v0, 0x6

    .line 17
    new-array v0, v0, [Lcom/oneplus/gallery2/media/MediaFilter$MediaType;

    sget-object v1, Lcom/oneplus/gallery2/media/MediaFilter$MediaType;->PHOTO:Lcom/oneplus/gallery2/media/MediaFilter$MediaType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oneplus/gallery2/media/MediaFilter$MediaType;->BURST:Lcom/oneplus/gallery2/media/MediaFilter$MediaType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/oneplus/gallery2/media/MediaFilter$MediaType;->PANORAMA:Lcom/oneplus/gallery2/media/MediaFilter$MediaType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/oneplus/gallery2/media/MediaFilter$MediaType;->VIDEO:Lcom/oneplus/gallery2/media/MediaFilter$MediaType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/oneplus/gallery2/media/MediaFilter$MediaType;->TIME_LAPSE:Lcom/oneplus/gallery2/media/MediaFilter$MediaType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/oneplus/gallery2/media/MediaFilter$MediaType;->SLOW_MOTION:Lcom/oneplus/gallery2/media/MediaFilter$MediaType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/oneplus/gallery2/media/MediaFilter$MediaType;->ENUM$VALUES:[Lcom/oneplus/gallery2/media/MediaFilter$MediaType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oneplus/gallery2/media/MediaFilter$MediaType;
    .locals 1

    .prologue
    const-class v0, Lcom/oneplus/gallery2/media/MediaFilter$MediaType;

    .line 1
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/MediaFilter$MediaType;

    return-object v0
.end method

.method public static values()[Lcom/oneplus/gallery2/media/MediaFilter$MediaType;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/oneplus/gallery2/media/MediaFilter$MediaType;->ENUM$VALUES:[Lcom/oneplus/gallery2/media/MediaFilter$MediaType;

    array-length v1, v0

    new-array v2, v1, [Lcom/oneplus/gallery2/media/MediaFilter$MediaType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
