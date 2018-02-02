.class public interface abstract Lcom/oneplus/camera/ui/SwitchAnimation;
.super Ljava/lang/Object;
.source "SwitchAnimation.java"

# interfaces
.implements Lcom/oneplus/base/component/Component;


# static fields
.field public static final PROP_ANIMATION_STATE:Lcom/oneplus/base/PropertyKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Lcom/oneplus/camera/OperationState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 12
    new-instance v0, Lcom/oneplus/base/PropertyKey;

    const-string/jumbo v1, "AnimationState"

    const-class v2, Lcom/oneplus/camera/OperationState;

    const-class v3, Lcom/oneplus/camera/ui/SwitchAnimation;

    sget-object v4, Lcom/oneplus/camera/OperationState;->STOPPED:Lcom/oneplus/camera/OperationState;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/base/PropertyKey;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    sput-object v0, Lcom/oneplus/camera/ui/SwitchAnimation;->PROP_ANIMATION_STATE:Lcom/oneplus/base/PropertyKey;

    .line 7
    return-void
.end method


# virtual methods
.method public abstract start(I)V
.end method
