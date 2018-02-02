.class Lcom/oneplus/camera/scene/SceneManagerImpl$1;
.super Ljava/lang/Object;
.source "SceneManagerImpl.java"

# interfaces
.implements Lcom/oneplus/base/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/camera/scene/SceneManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/oneplus/base/PropertyChangedCallback",
        "<",
        "Lcom/oneplus/camera/Mode$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic -com-oneplus-camera-Mode$StateSwitchesValues:[I


# instance fields
.field final synthetic $SWITCH_TABLE$com$oneplus$camera$Mode$State:[I

.field final synthetic this$0:Lcom/oneplus/camera/scene/SceneManagerImpl;


# direct methods
.method private static synthetic -getcom-oneplus-camera-Mode$StateSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/oneplus/camera/scene/SceneManagerImpl$1;->-com-oneplus-camera-Mode$StateSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/camera/scene/SceneManagerImpl$1;->-com-oneplus-camera-Mode$StateSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/oneplus/camera/Mode$State;->values()[Lcom/oneplus/camera/Mode$State;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/oneplus/camera/Mode$State;->DISABLED:Lcom/oneplus/camera/Mode$State;

    invoke-virtual {v1}, Lcom/oneplus/camera/Mode$State;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_5

    :goto_0
    :try_start_1
    sget-object v1, Lcom/oneplus/camera/Mode$State;->ENTERED:Lcom/oneplus/camera/Mode$State;

    invoke-virtual {v1}, Lcom/oneplus/camera/Mode$State;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_4

    :goto_1
    :try_start_2
    sget-object v1, Lcom/oneplus/camera/Mode$State;->ENTERING:Lcom/oneplus/camera/Mode$State;

    invoke-virtual {v1}, Lcom/oneplus/camera/Mode$State;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_3

    :goto_2
    :try_start_3
    sget-object v1, Lcom/oneplus/camera/Mode$State;->EXITED:Lcom/oneplus/camera/Mode$State;

    invoke-virtual {v1}, Lcom/oneplus/camera/Mode$State;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_2

    :goto_3
    :try_start_4
    sget-object v1, Lcom/oneplus/camera/Mode$State;->EXITING:Lcom/oneplus/camera/Mode$State;

    invoke-virtual {v1}, Lcom/oneplus/camera/Mode$State;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_1

    :goto_4
    :try_start_5
    sget-object v1, Lcom/oneplus/camera/Mode$State;->RELEASED:Lcom/oneplus/camera/Mode$State;

    invoke-virtual {v1}, Lcom/oneplus/camera/Mode$State;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_0

    :goto_5
    sput-object v0, Lcom/oneplus/camera/scene/SceneManagerImpl$1;->-com-oneplus-camera-Mode$StateSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_5

    :catch_1
    move-exception v1

    goto :goto_4

    :catch_2
    move-exception v1

    goto :goto_3

    :catch_3
    move-exception v1

    goto :goto_2

    :catch_4
    move-exception v1

    goto :goto_1

    :catch_5
    move-exception v1

    goto :goto_0
.end method

.method constructor <init>(Lcom/oneplus/camera/scene/SceneManagerImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/camera/scene/SceneManagerImpl;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/oneplus/camera/scene/SceneManagerImpl$1;->this$0:Lcom/oneplus/camera/scene/SceneManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/oneplus/base/PropertySource;Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangeEventArgs;)V
    .locals 2
    .param p1, "source"    # Lcom/oneplus/base/PropertySource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/base/PropertySource;",
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Lcom/oneplus/camera/Mode$State;",
            ">;",
            "Lcom/oneplus/base/PropertyChangeEventArgs",
            "<",
            "Lcom/oneplus/camera/Mode$State;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 58
    .local p2, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<Lcom/oneplus/camera/Mode$State;>;"
    .local p3, "e":Lcom/oneplus/base/PropertyChangeEventArgs;, "Lcom/oneplus/base/PropertyChangeEventArgs<Lcom/oneplus/camera/Mode$State;>;"
    invoke-static {}, Lcom/oneplus/camera/scene/SceneManagerImpl$1;->-getcom-oneplus-camera-Mode$StateSwitchesValues()[I

    move-result-object v1

    invoke-virtual {p3}, Lcom/oneplus/base/PropertyChangeEventArgs;->getNewValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/Mode$State;

    invoke-virtual {v0}, Lcom/oneplus/camera/Mode$State;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 67
    invoke-virtual {p3}, Lcom/oneplus/base/PropertyChangeEventArgs;->getOldValue()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/Mode$State;->DISABLED:Lcom/oneplus/camera/Mode$State;

    if-ne v0, v1, :cond_0

    .line 68
    iget-object v0, p0, Lcom/oneplus/camera/scene/SceneManagerImpl$1;->this$0:Lcom/oneplus/camera/scene/SceneManagerImpl;

    check-cast p1, Lcom/oneplus/camera/scene/Scene;

    .end local p1    # "source":Lcom/oneplus/base/PropertySource;
    invoke-static {v0, p1}, Lcom/oneplus/camera/scene/SceneManagerImpl;->-wrap1(Lcom/oneplus/camera/scene/SceneManagerImpl;Lcom/oneplus/camera/scene/Scene;)V

    .line 56
    :cond_0
    :goto_0
    return-void

    .line 61
    .restart local p1    # "source":Lcom/oneplus/base/PropertySource;
    :pswitch_0
    iget-object v0, p0, Lcom/oneplus/camera/scene/SceneManagerImpl$1;->this$0:Lcom/oneplus/camera/scene/SceneManagerImpl;

    check-cast p1, Lcom/oneplus/camera/scene/Scene;

    .end local p1    # "source":Lcom/oneplus/base/PropertySource;
    invoke-static {v0, p1}, Lcom/oneplus/camera/scene/SceneManagerImpl;->-wrap0(Lcom/oneplus/camera/scene/SceneManagerImpl;Lcom/oneplus/camera/scene/Scene;)V

    goto :goto_0

    .line 64
    .restart local p1    # "source":Lcom/oneplus/base/PropertySource;
    :pswitch_1
    iget-object v0, p0, Lcom/oneplus/camera/scene/SceneManagerImpl$1;->this$0:Lcom/oneplus/camera/scene/SceneManagerImpl;

    check-cast p1, Lcom/oneplus/camera/scene/Scene;

    .end local p1    # "source":Lcom/oneplus/base/PropertySource;
    invoke-static {v0, p1}, Lcom/oneplus/camera/scene/SceneManagerImpl;->-wrap2(Lcom/oneplus/camera/scene/SceneManagerImpl;Lcom/oneplus/camera/scene/Scene;)V

    goto :goto_0

    .line 58
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
