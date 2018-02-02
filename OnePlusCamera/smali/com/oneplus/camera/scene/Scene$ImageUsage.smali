.class public final enum Lcom/oneplus/camera/scene/Scene$ImageUsage;
.super Ljava/lang/Enum;
.source "Scene.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/camera/scene/Scene;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ImageUsage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/oneplus/camera/scene/Scene$ImageUsage;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/oneplus/camera/scene/Scene$ImageUsage;

.field public static final enum OPTIONS_PANEL_ICON:Lcom/oneplus/camera/scene/Scene$ImageUsage;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 23
    new-instance v0, Lcom/oneplus/camera/scene/Scene$ImageUsage;

    const-string/jumbo v1, "OPTIONS_PANEL_ICON"

    invoke-direct {v0, v1, v2}, Lcom/oneplus/camera/scene/Scene$ImageUsage;-><init>(Ljava/lang/String;I)V

    .line 26
    sput-object v0, Lcom/oneplus/camera/scene/Scene$ImageUsage;->OPTIONS_PANEL_ICON:Lcom/oneplus/camera/scene/Scene$ImageUsage;

    .line 21
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/oneplus/camera/scene/Scene$ImageUsage;

    sget-object v1, Lcom/oneplus/camera/scene/Scene$ImageUsage;->OPTIONS_PANEL_ICON:Lcom/oneplus/camera/scene/Scene$ImageUsage;

    aput-object v1, v0, v2

    sput-object v0, Lcom/oneplus/camera/scene/Scene$ImageUsage;->$VALUES:[Lcom/oneplus/camera/scene/Scene$ImageUsage;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/oneplus/camera/scene/Scene$ImageUsage;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 21
    const-class v0, Lcom/oneplus/camera/scene/Scene$ImageUsage;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/scene/Scene$ImageUsage;

    return-object v0
.end method

.method public static values()[Lcom/oneplus/camera/scene/Scene$ImageUsage;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/oneplus/camera/scene/Scene$ImageUsage;->$VALUES:[Lcom/oneplus/camera/scene/Scene$ImageUsage;

    return-object v0
.end method
