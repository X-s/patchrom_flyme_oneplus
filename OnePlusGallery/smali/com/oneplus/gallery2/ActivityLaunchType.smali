.class public final enum Lcom/oneplus/gallery2/ActivityLaunchType;
.super Ljava/lang/Enum;
.source "ActivityLaunchType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oneplus/gallery2/ActivityLaunchType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oneplus/gallery2/ActivityLaunchType;

.field public static final enum NORMAL:Lcom/oneplus/gallery2/ActivityLaunchType;

.field public static final enum PHOTO_EDITOR:Lcom/oneplus/gallery2/ActivityLaunchType;

.field public static final enum PHOTO_PICKER:Lcom/oneplus/gallery2/ActivityLaunchType;

.field public static final enum UNKNOWN:Lcom/oneplus/gallery2/ActivityLaunchType;

.field public static final enum VIDEO_PICKER:Lcom/oneplus/gallery2/ActivityLaunchType;

.field public static final enum VIDEO_PLAYER:Lcom/oneplus/gallery2/ActivityLaunchType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 11
    new-instance v0, Lcom/oneplus/gallery2/ActivityLaunchType;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v3}, Lcom/oneplus/gallery2/ActivityLaunchType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/gallery2/ActivityLaunchType;->UNKNOWN:Lcom/oneplus/gallery2/ActivityLaunchType;

    .line 15
    new-instance v0, Lcom/oneplus/gallery2/ActivityLaunchType;

    const-string v1, "NORMAL"

    invoke-direct {v0, v1, v4}, Lcom/oneplus/gallery2/ActivityLaunchType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/gallery2/ActivityLaunchType;->NORMAL:Lcom/oneplus/gallery2/ActivityLaunchType;

    .line 19
    new-instance v0, Lcom/oneplus/gallery2/ActivityLaunchType;

    const-string v1, "PHOTO_EDITOR"

    invoke-direct {v0, v1, v5}, Lcom/oneplus/gallery2/ActivityLaunchType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/gallery2/ActivityLaunchType;->PHOTO_EDITOR:Lcom/oneplus/gallery2/ActivityLaunchType;

    .line 23
    new-instance v0, Lcom/oneplus/gallery2/ActivityLaunchType;

    const-string v1, "VIDEO_PLAYER"

    invoke-direct {v0, v1, v6}, Lcom/oneplus/gallery2/ActivityLaunchType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/gallery2/ActivityLaunchType;->VIDEO_PLAYER:Lcom/oneplus/gallery2/ActivityLaunchType;

    .line 27
    new-instance v0, Lcom/oneplus/gallery2/ActivityLaunchType;

    const-string v1, "PHOTO_PICKER"

    invoke-direct {v0, v1, v7}, Lcom/oneplus/gallery2/ActivityLaunchType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/gallery2/ActivityLaunchType;->PHOTO_PICKER:Lcom/oneplus/gallery2/ActivityLaunchType;

    .line 31
    new-instance v0, Lcom/oneplus/gallery2/ActivityLaunchType;

    const-string v1, "VIDEO_PICKER"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/oneplus/gallery2/ActivityLaunchType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/gallery2/ActivityLaunchType;->VIDEO_PICKER:Lcom/oneplus/gallery2/ActivityLaunchType;

    .line 6
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/oneplus/gallery2/ActivityLaunchType;

    sget-object v1, Lcom/oneplus/gallery2/ActivityLaunchType;->UNKNOWN:Lcom/oneplus/gallery2/ActivityLaunchType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oneplus/gallery2/ActivityLaunchType;->NORMAL:Lcom/oneplus/gallery2/ActivityLaunchType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/oneplus/gallery2/ActivityLaunchType;->PHOTO_EDITOR:Lcom/oneplus/gallery2/ActivityLaunchType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/oneplus/gallery2/ActivityLaunchType;->VIDEO_PLAYER:Lcom/oneplus/gallery2/ActivityLaunchType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/oneplus/gallery2/ActivityLaunchType;->PHOTO_PICKER:Lcom/oneplus/gallery2/ActivityLaunchType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/oneplus/gallery2/ActivityLaunchType;->VIDEO_PICKER:Lcom/oneplus/gallery2/ActivityLaunchType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/oneplus/gallery2/ActivityLaunchType;->$VALUES:[Lcom/oneplus/gallery2/ActivityLaunchType;

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
    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oneplus/gallery2/ActivityLaunchType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 6
    const-class v0, Lcom/oneplus/gallery2/ActivityLaunchType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/ActivityLaunchType;

    return-object v0
.end method

.method public static values()[Lcom/oneplus/gallery2/ActivityLaunchType;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/oneplus/gallery2/ActivityLaunchType;->$VALUES:[Lcom/oneplus/gallery2/ActivityLaunchType;

    invoke-virtual {v0}, [Lcom/oneplus/gallery2/ActivityLaunchType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/oneplus/gallery2/ActivityLaunchType;

    return-object v0
.end method
