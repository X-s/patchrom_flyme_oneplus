.class final enum Lcom/oneplus/camera/ui/ThumbnailBarImpl$AnimState;
.super Ljava/lang/Enum;
.source "ThumbnailBarImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/camera/ui/ThumbnailBarImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "AnimState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oneplus/camera/ui/ThumbnailBarImpl$AnimState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oneplus/camera/ui/ThumbnailBarImpl$AnimState;

.field public static final enum STARTED:Lcom/oneplus/camera/ui/ThumbnailBarImpl$AnimState;

.field public static final enum STARTING:Lcom/oneplus/camera/ui/ThumbnailBarImpl$AnimState;

.field public static final enum STOPPED:Lcom/oneplus/camera/ui/ThumbnailBarImpl$AnimState;

.field public static final enum STOPPING:Lcom/oneplus/camera/ui/ThumbnailBarImpl$AnimState;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 138
    new-instance v0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$AnimState;

    const-string/jumbo v1, "STARTING"

    invoke-direct {v0, v1, v2}, Lcom/oneplus/camera/ui/ThumbnailBarImpl$AnimState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$AnimState;->STARTING:Lcom/oneplus/camera/ui/ThumbnailBarImpl$AnimState;

    .line 139
    new-instance v0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$AnimState;

    const-string/jumbo v1, "STARTED"

    invoke-direct {v0, v1, v3}, Lcom/oneplus/camera/ui/ThumbnailBarImpl$AnimState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$AnimState;->STARTED:Lcom/oneplus/camera/ui/ThumbnailBarImpl$AnimState;

    .line 140
    new-instance v0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$AnimState;

    const-string/jumbo v1, "STOPPING"

    invoke-direct {v0, v1, v4}, Lcom/oneplus/camera/ui/ThumbnailBarImpl$AnimState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$AnimState;->STOPPING:Lcom/oneplus/camera/ui/ThumbnailBarImpl$AnimState;

    .line 141
    new-instance v0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$AnimState;

    const-string/jumbo v1, "STOPPED"

    invoke-direct {v0, v1, v5}, Lcom/oneplus/camera/ui/ThumbnailBarImpl$AnimState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$AnimState;->STOPPED:Lcom/oneplus/camera/ui/ThumbnailBarImpl$AnimState;

    .line 136
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/oneplus/camera/ui/ThumbnailBarImpl$AnimState;

    sget-object v1, Lcom/oneplus/camera/ui/ThumbnailBarImpl$AnimState;->STARTING:Lcom/oneplus/camera/ui/ThumbnailBarImpl$AnimState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/oneplus/camera/ui/ThumbnailBarImpl$AnimState;->STARTED:Lcom/oneplus/camera/ui/ThumbnailBarImpl$AnimState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/oneplus/camera/ui/ThumbnailBarImpl$AnimState;->STOPPING:Lcom/oneplus/camera/ui/ThumbnailBarImpl$AnimState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/oneplus/camera/ui/ThumbnailBarImpl$AnimState;->STOPPED:Lcom/oneplus/camera/ui/ThumbnailBarImpl$AnimState;

    aput-object v1, v0, v5

    sput-object v0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$AnimState;->$VALUES:[Lcom/oneplus/camera/ui/ThumbnailBarImpl$AnimState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 136
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oneplus/camera/ui/ThumbnailBarImpl$AnimState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 136
    const-class v0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$AnimState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$AnimState;

    return-object v0
.end method

.method public static values()[Lcom/oneplus/camera/ui/ThumbnailBarImpl$AnimState;
    .locals 1

    .prologue
    .line 136
    sget-object v0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$AnimState;->$VALUES:[Lcom/oneplus/camera/ui/ThumbnailBarImpl$AnimState;

    return-object v0
.end method
