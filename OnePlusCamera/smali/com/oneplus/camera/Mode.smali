.class public interface abstract Lcom/oneplus/camera/Mode;
.super Ljava/lang/Object;
.source "Mode.java"

# interfaces
.implements Lcom/oneplus/base/BaseObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/camera/Mode$State;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/oneplus/camera/Mode",
        "<*>;>",
        "Ljava/lang/Object;",
        "Lcom/oneplus/base/BaseObject;"
    }
.end annotation


# static fields
.field public static final FLAG_PRESERVE_CAMERA_PREVIEW_STATE:I = 0x1

.field public static final PROP_ID:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_STATE:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Lcom/oneplus/camera/Mode$State;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROP_TARGET_CAMERA_LENS_FACING:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Lcom/oneplus/camera/Camera$LensFacing;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 21
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "ID"

    const-class v2, Ljava/lang/String;

    const-class v3, Lcom/oneplus/camera/Mode;

    const-string/jumbo v4, ""

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/Mode;->PROP_ID:Lcom/oneplus/base/PropertyKey;

    .line 25
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "State"

    const-class v2, Lcom/oneplus/camera/Mode$State;

    const-class v3, Lcom/oneplus/camera/Mode;

    sget-object v4, Lcom/oneplus/camera/Mode$State;->EXITED:Lcom/oneplus/camera/Mode$State;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/Mode;->PROP_STATE:Lcom/oneplus/base/PropertyKey;

    .line 29
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "TargetCameraLensFacing"

    const-class v2, Lcom/oneplus/camera/Camera$LensFacing;

    const-class v3, Lcom/oneplus/camera/Mode;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/Mode;->PROP_TARGET_CAMERA_LENS_FACING:Lcom/oneplus/base/PropertyKey;

    .line 10
    return-void
.end method


# virtual methods
.method public abstract enter(Lcom/oneplus/camera/Mode;I)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)Z"
        }
    .end annotation
.end method

.method public abstract exit(Lcom/oneplus/camera/Mode;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation
.end method

.method public abstract getDisplayName()Ljava/lang/String;
.end method
