.class public interface abstract Lcom/oneplus/camera/scene/Scene;
.super Ljava/lang/Object;
.source "Scene.java"

# interfaces
.implements Lcom/oneplus/camera/Mode;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/camera/scene/Scene$ImageUsage;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/oneplus/camera/Mode",
        "<",
        "Lcom/oneplus/camera/scene/Scene;",
        ">;"
    }
.end annotation


# static fields
.field public static final NO_SCENE:Lcom/oneplus/camera/scene/Scene;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    new-instance v0, Lcom/oneplus/camera/scene/NoScene;

    invoke-direct {v0}, Lcom/oneplus/camera/scene/NoScene;-><init>()V

    sput-object v0, Lcom/oneplus/camera/scene/Scene;->NO_SCENE:Lcom/oneplus/camera/scene/Scene;

    return-void
.end method


# virtual methods
.method public abstract getImage(Lcom/oneplus/camera/scene/Scene$ImageUsage;)Landroid/graphics/drawable/Drawable;
.end method
