.class public final enum Lcom/oneplus/gallery/ActivityLaunchType;
.super Ljava/lang/Enum;
.source "ActivityLaunchType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oneplus/gallery/ActivityLaunchType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/oneplus/gallery/ActivityLaunchType;

.field public static final enum NORMAL:Lcom/oneplus/gallery/ActivityLaunchType;

.field public static final enum PHOTO_EDITOR:Lcom/oneplus/gallery/ActivityLaunchType;

.field public static final enum PHOTO_PICKER:Lcom/oneplus/gallery/ActivityLaunchType;

.field public static final enum UNKNOWN:Lcom/oneplus/gallery/ActivityLaunchType;

.field public static final enum VIDEO_PICKER:Lcom/oneplus/gallery/ActivityLaunchType;

.field public static final enum VIDEO_PLAYER:Lcom/oneplus/gallery/ActivityLaunchType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 8
    new-instance v0, Lcom/oneplus/gallery/ActivityLaunchType;

    const-string/jumbo v1, "UNKNOWN"

    invoke-direct {v0, v1, v3}, Lcom/oneplus/gallery/ActivityLaunchType;-><init>(Ljava/lang/String;I)V

    .line 11
    sput-object v0, Lcom/oneplus/gallery/ActivityLaunchType;->UNKNOWN:Lcom/oneplus/gallery/ActivityLaunchType;

    .line 12
    new-instance v0, Lcom/oneplus/gallery/ActivityLaunchType;

    const-string/jumbo v1, "NORMAL"

    invoke-direct {v0, v1, v4}, Lcom/oneplus/gallery/ActivityLaunchType;-><init>(Ljava/lang/String;I)V

    .line 15
    sput-object v0, Lcom/oneplus/gallery/ActivityLaunchType;->NORMAL:Lcom/oneplus/gallery/ActivityLaunchType;

    .line 16
    new-instance v0, Lcom/oneplus/gallery/ActivityLaunchType;

    const-string/jumbo v1, "PHOTO_EDITOR"

    invoke-direct {v0, v1, v5}, Lcom/oneplus/gallery/ActivityLaunchType;-><init>(Ljava/lang/String;I)V

    .line 19
    sput-object v0, Lcom/oneplus/gallery/ActivityLaunchType;->PHOTO_EDITOR:Lcom/oneplus/gallery/ActivityLaunchType;

    .line 20
    new-instance v0, Lcom/oneplus/gallery/ActivityLaunchType;

    const-string/jumbo v1, "VIDEO_PLAYER"

    invoke-direct {v0, v1, v6}, Lcom/oneplus/gallery/ActivityLaunchType;-><init>(Ljava/lang/String;I)V

    .line 23
    sput-object v0, Lcom/oneplus/gallery/ActivityLaunchType;->VIDEO_PLAYER:Lcom/oneplus/gallery/ActivityLaunchType;

    .line 24
    new-instance v0, Lcom/oneplus/gallery/ActivityLaunchType;

    const-string/jumbo v1, "PHOTO_PICKER"

    invoke-direct {v0, v1, v7}, Lcom/oneplus/gallery/ActivityLaunchType;-><init>(Ljava/lang/String;I)V

    .line 27
    sput-object v0, Lcom/oneplus/gallery/ActivityLaunchType;->PHOTO_PICKER:Lcom/oneplus/gallery/ActivityLaunchType;

    .line 28
    new-instance v0, Lcom/oneplus/gallery/ActivityLaunchType;

    const-string/jumbo v1, "VIDEO_PICKER"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/oneplus/gallery/ActivityLaunchType;-><init>(Ljava/lang/String;I)V

    .line 31
    sput-object v0, Lcom/oneplus/gallery/ActivityLaunchType;->VIDEO_PICKER:Lcom/oneplus/gallery/ActivityLaunchType;

    const/4 v0, 0x6

    .line 6
    new-array v0, v0, [Lcom/oneplus/gallery/ActivityLaunchType;

    sget-object v1, Lcom/oneplus/gallery/ActivityLaunchType;->UNKNOWN:Lcom/oneplus/gallery/ActivityLaunchType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oneplus/gallery/ActivityLaunchType;->NORMAL:Lcom/oneplus/gallery/ActivityLaunchType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/oneplus/gallery/ActivityLaunchType;->PHOTO_EDITOR:Lcom/oneplus/gallery/ActivityLaunchType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/oneplus/gallery/ActivityLaunchType;->VIDEO_PLAYER:Lcom/oneplus/gallery/ActivityLaunchType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/oneplus/gallery/ActivityLaunchType;->PHOTO_PICKER:Lcom/oneplus/gallery/ActivityLaunchType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/oneplus/gallery/ActivityLaunchType;->VIDEO_PICKER:Lcom/oneplus/gallery/ActivityLaunchType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/oneplus/gallery/ActivityLaunchType;->ENUM$VALUES:[Lcom/oneplus/gallery/ActivityLaunchType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oneplus/gallery/ActivityLaunchType;
    .locals 1

    .prologue
    const-class v0, Lcom/oneplus/gallery/ActivityLaunchType;

    .line 1
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery/ActivityLaunchType;

    return-object v0
.end method

.method public static values()[Lcom/oneplus/gallery/ActivityLaunchType;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/oneplus/gallery/ActivityLaunchType;->ENUM$VALUES:[Lcom/oneplus/gallery/ActivityLaunchType;

    array-length v1, v0

    new-array v2, v1, [Lcom/oneplus/gallery/ActivityLaunchType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
