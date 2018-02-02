.class Lcom/oneplus/gallery/CameraGalleryImpl$27;
.super Ljava/lang/Object;
.source "CameraGalleryImpl.java"

# interfaces
.implements Lcom/oneplus/base/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery/CameraGalleryImpl;->openBurstViewer(Lcom/oneplus/gallery2/media/GroupedMedia;)V
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
        "Lcom/oneplus/gallery/BurstViewer$UIState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic -com-oneplus-gallery-BurstViewer$UIStateSwitchesValues:[I


# instance fields
.field final synthetic $SWITCH_TABLE$com$oneplus$gallery$BurstViewer$UIState:[I

.field final synthetic this$0:Lcom/oneplus/gallery/CameraGalleryImpl;


# direct methods
.method private static synthetic -getcom-oneplus-gallery-BurstViewer$UIStateSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/oneplus/gallery/CameraGalleryImpl$27;->-com-oneplus-gallery-BurstViewer$UIStateSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/gallery/CameraGalleryImpl$27;->-com-oneplus-gallery-BurstViewer$UIStateSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/oneplus/gallery/BurstViewer$UIState;->values()[Lcom/oneplus/gallery/BurstViewer$UIState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/oneplus/gallery/BurstViewer$UIState;->CLOSED:Lcom/oneplus/gallery/BurstViewer$UIState;

    invoke-virtual {v1}, Lcom/oneplus/gallery/BurstViewer$UIState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    :try_start_1
    sget-object v1, Lcom/oneplus/gallery/BurstViewer$UIState;->CLOSING:Lcom/oneplus/gallery/BurstViewer$UIState;

    invoke-virtual {v1}, Lcom/oneplus/gallery/BurstViewer$UIState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    :try_start_2
    sget-object v1, Lcom/oneplus/gallery/BurstViewer$UIState;->OPENED:Lcom/oneplus/gallery/BurstViewer$UIState;

    invoke-virtual {v1}, Lcom/oneplus/gallery/BurstViewer$UIState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    :try_start_3
    sget-object v1, Lcom/oneplus/gallery/BurstViewer$UIState;->OPENING:Lcom/oneplus/gallery/BurstViewer$UIState;

    invoke-virtual {v1}, Lcom/oneplus/gallery/BurstViewer$UIState;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    sput-object v0, Lcom/oneplus/gallery/CameraGalleryImpl$27;->-com-oneplus-gallery-BurstViewer$UIStateSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1

    :catch_3
    move-exception v1

    goto :goto_0
.end method

.method constructor <init>(Lcom/oneplus/gallery/CameraGalleryImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/gallery/CameraGalleryImpl;

    .prologue
    .line 4586
    iput-object p1, p0, Lcom/oneplus/gallery/CameraGalleryImpl$27;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

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
            "Lcom/oneplus/gallery/BurstViewer$UIState;",
            ">;",
            "Lcom/oneplus/base/PropertyChangeEventArgs",
            "<",
            "Lcom/oneplus/gallery/BurstViewer$UIState;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4591
    .local p2, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<Lcom/oneplus/gallery/BurstViewer$UIState;>;"
    .local p3, "e":Lcom/oneplus/base/PropertyChangeEventArgs;, "Lcom/oneplus/base/PropertyChangeEventArgs<Lcom/oneplus/gallery/BurstViewer$UIState;>;"
    invoke-static {}, Lcom/oneplus/gallery/CameraGalleryImpl$27;->-getcom-oneplus-gallery-BurstViewer$UIStateSwitchesValues()[I

    move-result-object v1

    invoke-virtual {p3}, Lcom/oneplus/base/PropertyChangeEventArgs;->getNewValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery/BurstViewer$UIState;

    invoke-virtual {v0}, Lcom/oneplus/gallery/BurstViewer$UIState;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 4589
    :goto_0
    return-void

    .line 4594
    :pswitch_0
    iget-object v0, p0, Lcom/oneplus/gallery/CameraGalleryImpl$27;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/oneplus/gallery/CameraGalleryImpl;->-wrap58(Lcom/oneplus/gallery/CameraGalleryImpl;Z)V

    goto :goto_0

    .line 4591
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
