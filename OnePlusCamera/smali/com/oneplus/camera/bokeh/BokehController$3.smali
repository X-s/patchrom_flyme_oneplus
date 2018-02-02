.class Lcom/oneplus/camera/bokeh/BokehController$3;
.super Ljava/lang/Object;
.source "BokehController.java"

# interfaces
.implements Lcom/oneplus/base/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/camera/bokeh/BokehController;
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
        "Lcom/oneplus/camera/Camera$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic -com-oneplus-camera-Camera$StateSwitchesValues:[I


# instance fields
.field final synthetic $SWITCH_TABLE$com$oneplus$camera$Camera$State:[I

.field final synthetic this$0:Lcom/oneplus/camera/bokeh/BokehController;


# direct methods
.method private static synthetic -getcom-oneplus-camera-Camera$StateSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/oneplus/camera/bokeh/BokehController$3;->-com-oneplus-camera-Camera$StateSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/camera/bokeh/BokehController$3;->-com-oneplus-camera-Camera$StateSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/oneplus/camera/Camera$State;->values()[Lcom/oneplus/camera/Camera$State;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/oneplus/camera/Camera$State;->CLOSED:Lcom/oneplus/camera/Camera$State;

    invoke-virtual {v1}, Lcom/oneplus/camera/Camera$State;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

    :goto_0
    :try_start_1
    sget-object v1, Lcom/oneplus/camera/Camera$State;->CLOSING:Lcom/oneplus/camera/Camera$State;

    invoke-virtual {v1}, Lcom/oneplus/camera/Camera$State;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3

    :goto_1
    :try_start_2
    sget-object v1, Lcom/oneplus/camera/Camera$State;->OPENED:Lcom/oneplus/camera/Camera$State;

    invoke-virtual {v1}, Lcom/oneplus/camera/Camera$State;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    :try_start_3
    sget-object v1, Lcom/oneplus/camera/Camera$State;->OPENING:Lcom/oneplus/camera/Camera$State;

    invoke-virtual {v1}, Lcom/oneplus/camera/Camera$State;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1

    :goto_3
    :try_start_4
    sget-object v1, Lcom/oneplus/camera/Camera$State;->UNAVAILABLE:Lcom/oneplus/camera/Camera$State;

    invoke-virtual {v1}, Lcom/oneplus/camera/Camera$State;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_0

    :goto_4
    sput-object v0, Lcom/oneplus/camera/bokeh/BokehController$3;->-com-oneplus-camera-Camera$StateSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_4

    :catch_1
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_1

    :catch_4
    move-exception v1

    goto :goto_0
.end method

.method constructor <init>(Lcom/oneplus/camera/bokeh/BokehController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/camera/bokeh/BokehController;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/oneplus/camera/bokeh/BokehController$3;->this$0:Lcom/oneplus/camera/bokeh/BokehController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/oneplus/base/PropertySource;Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangeEventArgs;)V
    .locals 3
    .param p1, "source"    # Lcom/oneplus/base/PropertySource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/base/PropertySource;",
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Lcom/oneplus/camera/Camera$State;",
            ">;",
            "Lcom/oneplus/base/PropertyChangeEventArgs",
            "<",
            "Lcom/oneplus/camera/Camera$State;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<Lcom/oneplus/camera/Camera$State;>;"
    .local p3, "e":Lcom/oneplus/base/PropertyChangeEventArgs;, "Lcom/oneplus/base/PropertyChangeEventArgs<Lcom/oneplus/camera/Camera$State;>;"
    const/4 v2, 0x0

    .line 76
    invoke-static {}, Lcom/oneplus/camera/bokeh/BokehController$3;->-getcom-oneplus-camera-Camera$StateSwitchesValues()[I

    move-result-object v1

    invoke-virtual {p3}, Lcom/oneplus/base/PropertyChangeEventArgs;->getNewValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/Camera$State;

    invoke-virtual {v0}, Lcom/oneplus/camera/Camera$State;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 74
    :cond_0
    :goto_0
    return-void

    .line 79
    :pswitch_0
    iget-object v0, p0, Lcom/oneplus/camera/bokeh/BokehController$3;->this$0:Lcom/oneplus/camera/bokeh/BokehController;

    invoke-static {v0}, Lcom/oneplus/camera/bokeh/BokehController;->-get0(Lcom/oneplus/camera/bokeh/BokehController;)Lcom/oneplus/camera/Camera;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/oneplus/camera/bokeh/BokehController$3;->this$0:Lcom/oneplus/camera/bokeh/BokehController;

    invoke-static {v0}, Lcom/oneplus/camera/bokeh/BokehController;->-get0(Lcom/oneplus/camera/bokeh/BokehController;)Lcom/oneplus/camera/Camera;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/Camera;->PROP_IS_BOKEH_ORIGINAL_PICTURE_SUPPORTED:Lcom/oneplus/base/PropertyKey;

    invoke-interface {v0, v1}, Lcom/oneplus/camera/Camera;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/camera/bokeh/BokehController$3;->this$0:Lcom/oneplus/camera/bokeh/BokehController;

    invoke-static {v0}, Lcom/oneplus/camera/bokeh/BokehController;->-wrap1(Lcom/oneplus/camera/bokeh/BokehController;)Lcom/oneplus/base/Settings;

    move-result-object v0

    const-string/jumbo v1, "BokehOriginalPicture"

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/base/Settings;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 83
    iget-object v0, p0, Lcom/oneplus/camera/bokeh/BokehController$3;->this$0:Lcom/oneplus/camera/bokeh/BokehController;

    invoke-static {v0}, Lcom/oneplus/camera/bokeh/BokehController;->-get0(Lcom/oneplus/camera/bokeh/BokehController;)Lcom/oneplus/camera/Camera;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/Camera;->PROP_IS_BOKEH_ORIGINAL_PICTURE_ENABLED:Lcom/oneplus/base/PropertyKey;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/oneplus/camera/Camera;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0

    .line 85
    :cond_1
    iget-object v0, p0, Lcom/oneplus/camera/bokeh/BokehController$3;->this$0:Lcom/oneplus/camera/bokeh/BokehController;

    invoke-static {v0}, Lcom/oneplus/camera/bokeh/BokehController;->-get0(Lcom/oneplus/camera/bokeh/BokehController;)Lcom/oneplus/camera/Camera;

    move-result-object v0

    sget-object v1, Lcom/oneplus/camera/Camera;->PROP_IS_BOKEH_ORIGINAL_PICTURE_ENABLED:Lcom/oneplus/base/PropertyKey;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/oneplus/camera/Camera;->set(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    goto :goto_0

    .line 76
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
