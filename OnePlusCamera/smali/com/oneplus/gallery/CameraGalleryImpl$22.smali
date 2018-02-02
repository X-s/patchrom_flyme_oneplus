.class Lcom/oneplus/gallery/CameraGalleryImpl$22;
.super Ljava/lang/Object;
.source "CameraGalleryImpl.java"

# interfaces
.implements Lcom/oneplus/base/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery/CameraGalleryImpl;->onInitialize()V
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
        "Lcom/oneplus/base/BaseActivity$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic -com-oneplus-base-BaseActivity$StateSwitchesValues:[I


# instance fields
.field final synthetic $SWITCH_TABLE$com$oneplus$base$BaseActivity$State:[I

.field final synthetic this$0:Lcom/oneplus/gallery/CameraGalleryImpl;


# direct methods
.method private static synthetic -getcom-oneplus-base-BaseActivity$StateSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/oneplus/gallery/CameraGalleryImpl$22;->-com-oneplus-base-BaseActivity$StateSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/gallery/CameraGalleryImpl$22;->-com-oneplus-base-BaseActivity$StateSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/oneplus/base/BaseActivity$State;->values()[Lcom/oneplus/base/BaseActivity$State;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/oneplus/base/BaseActivity$State;->CREATING:Lcom/oneplus/base/BaseActivity$State;

    invoke-virtual {v1}, Lcom/oneplus/base/BaseActivity$State;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_a

    :goto_0
    :try_start_1
    sget-object v1, Lcom/oneplus/base/BaseActivity$State;->DESTROYED:Lcom/oneplus/base/BaseActivity$State;

    invoke-virtual {v1}, Lcom/oneplus/base/BaseActivity$State;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_9

    :goto_1
    :try_start_2
    sget-object v1, Lcom/oneplus/base/BaseActivity$State;->DESTROYING:Lcom/oneplus/base/BaseActivity$State;

    invoke-virtual {v1}, Lcom/oneplus/base/BaseActivity$State;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_8

    :goto_2
    :try_start_3
    sget-object v1, Lcom/oneplus/base/BaseActivity$State;->NEW:Lcom/oneplus/base/BaseActivity$State;

    invoke-virtual {v1}, Lcom/oneplus/base/BaseActivity$State;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_7

    :goto_3
    :try_start_4
    sget-object v1, Lcom/oneplus/base/BaseActivity$State;->NEW_INTENT:Lcom/oneplus/base/BaseActivity$State;

    invoke-virtual {v1}, Lcom/oneplus/base/BaseActivity$State;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_6

    :goto_4
    :try_start_5
    sget-object v1, Lcom/oneplus/base/BaseActivity$State;->PAUSED:Lcom/oneplus/base/BaseActivity$State;

    invoke-virtual {v1}, Lcom/oneplus/base/BaseActivity$State;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :goto_5
    :try_start_6
    sget-object v1, Lcom/oneplus/base/BaseActivity$State;->PAUSING:Lcom/oneplus/base/BaseActivity$State;

    invoke-virtual {v1}, Lcom/oneplus/base/BaseActivity$State;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_4

    :goto_6
    :try_start_7
    sget-object v1, Lcom/oneplus/base/BaseActivity$State;->RESUMING:Lcom/oneplus/base/BaseActivity$State;

    invoke-virtual {v1}, Lcom/oneplus/base/BaseActivity$State;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_3

    :goto_7
    :try_start_8
    sget-object v1, Lcom/oneplus/base/BaseActivity$State;->RUNNING:Lcom/oneplus/base/BaseActivity$State;

    invoke-virtual {v1}, Lcom/oneplus/base/BaseActivity$State;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_2

    :goto_8
    :try_start_9
    sget-object v1, Lcom/oneplus/base/BaseActivity$State;->STARTING:Lcom/oneplus/base/BaseActivity$State;

    invoke-virtual {v1}, Lcom/oneplus/base/BaseActivity$State;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_1

    :goto_9
    :try_start_a
    sget-object v1, Lcom/oneplus/base/BaseActivity$State;->STOPPED:Lcom/oneplus/base/BaseActivity$State;

    invoke-virtual {v1}, Lcom/oneplus/base/BaseActivity$State;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_0

    :goto_a
    sput-object v0, Lcom/oneplus/gallery/CameraGalleryImpl$22;->-com-oneplus-base-BaseActivity$StateSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_a

    :catch_1
    move-exception v1

    goto :goto_9

    :catch_2
    move-exception v1

    goto :goto_8

    :catch_3
    move-exception v1

    goto :goto_7

    :catch_4
    move-exception v1

    goto :goto_6

    :catch_5
    move-exception v1

    goto :goto_5

    :catch_6
    move-exception v1

    goto :goto_4

    :catch_7
    move-exception v1

    goto :goto_3

    :catch_8
    move-exception v1

    goto :goto_2

    :catch_9
    move-exception v1

    goto :goto_1

    :catch_a
    move-exception v1

    goto :goto_0
.end method

.method constructor <init>(Lcom/oneplus/gallery/CameraGalleryImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/gallery/CameraGalleryImpl;

    .prologue
    .line 3506
    iput-object p1, p0, Lcom/oneplus/gallery/CameraGalleryImpl$22;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/oneplus/base/PropertySource;Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangeEventArgs;)V
    .locals 6
    .param p1, "source"    # Lcom/oneplus/base/PropertySource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/base/PropertySource;",
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Lcom/oneplus/base/BaseActivity$State;",
            ">;",
            "Lcom/oneplus/base/PropertyChangeEventArgs",
            "<",
            "Lcom/oneplus/base/BaseActivity$State;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<Lcom/oneplus/base/BaseActivity$State;>;"
    .local p3, "e":Lcom/oneplus/base/PropertyChangeEventArgs;, "Lcom/oneplus/base/PropertyChangeEventArgs<Lcom/oneplus/base/BaseActivity$State;>;"
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 3512
    invoke-static {}, Lcom/oneplus/gallery/CameraGalleryImpl$22;->-getcom-oneplus-base-BaseActivity$StateSwitchesValues()[I

    move-result-object v3

    invoke-virtual {p3}, Lcom/oneplus/base/PropertyChangeEventArgs;->getNewValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/base/BaseActivity$State;

    invoke-virtual {v2}, Lcom/oneplus/base/BaseActivity$State;->ordinal()I

    move-result v2

    aget v2, v3, v2

    packed-switch v2, :pswitch_data_0

    .line 3510
    :cond_0
    :goto_0
    return-void

    .line 3515
    :pswitch_0
    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl$22;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    invoke-static {v2, v4}, Lcom/oneplus/gallery/CameraGalleryImpl;->-set4(Lcom/oneplus/gallery/CameraGalleryImpl;Z)Z

    goto :goto_0

    .line 3520
    :pswitch_1
    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl$22;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    invoke-static {v2}, Lcom/oneplus/gallery/CameraGalleryImpl;->-get16(Lcom/oneplus/gallery/CameraGalleryImpl;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 3521
    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl$22;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    invoke-static {v2}, Lcom/oneplus/gallery/CameraGalleryImpl;->-get4(Lcom/oneplus/gallery/CameraGalleryImpl;)Lcom/oneplus/gallery/BurstViewer;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 3522
    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl$22;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    invoke-static {v2}, Lcom/oneplus/gallery/CameraGalleryImpl;->-get4(Lcom/oneplus/gallery/CameraGalleryImpl;)Lcom/oneplus/gallery/BurstViewer;

    move-result-object v2

    sget-object v3, Lcom/oneplus/gallery/BurstViewer;->PROP_IS_SHARING_MEDIA:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v2, v3}, Lcom/oneplus/gallery/BurstViewer;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 3520
    if-eqz v2, :cond_1

    .line 3524
    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl$22;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    invoke-static {v2, v5}, Lcom/oneplus/gallery/CameraGalleryImpl;->-set4(Lcom/oneplus/gallery/CameraGalleryImpl;Z)Z

    .line 3528
    :cond_1
    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl$22;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    const/16 v3, 0x2729

    invoke-static {v2, v3}, Lcom/oneplus/base/HandlerUtils;->removeMessages(Lcom/oneplus/base/HandlerObject;I)V

    .line 3531
    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl$22;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    invoke-static {v2, v4}, Lcom/oneplus/gallery/CameraGalleryImpl;->-wrap16(Lcom/oneplus/gallery/CameraGalleryImpl;Z)V

    .line 3534
    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl$22;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    iget-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl$22;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    invoke-static {v3}, Lcom/oneplus/gallery/CameraGalleryImpl;->-get37(Lcom/oneplus/gallery/CameraGalleryImpl;)Lcom/oneplus/base/Handle;

    move-result-object v3

    invoke-static {v3}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/gallery/CameraGalleryImpl;->-set12(Lcom/oneplus/gallery/CameraGalleryImpl;Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    .line 3535
    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl$22;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    iget-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl$22;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    invoke-static {v3}, Lcom/oneplus/gallery/CameraGalleryImpl;->-get36(Lcom/oneplus/gallery/CameraGalleryImpl;)Lcom/oneplus/base/Handle;

    move-result-object v3

    invoke-static {v3}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/gallery/CameraGalleryImpl;->-set11(Lcom/oneplus/gallery/CameraGalleryImpl;Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    .line 3536
    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl$22;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    iget-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl$22;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    invoke-static {v3}, Lcom/oneplus/gallery/CameraGalleryImpl;->-get22(Lcom/oneplus/gallery/CameraGalleryImpl;)Lcom/oneplus/base/Handle;

    move-result-object v3

    invoke-static {v3}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/gallery/CameraGalleryImpl;->-set6(Lcom/oneplus/gallery/CameraGalleryImpl;Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    goto :goto_0

    .line 3540
    :pswitch_2
    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl$22;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    invoke-static {v2}, Lcom/oneplus/gallery/CameraGalleryImpl;->-get16(Lcom/oneplus/gallery/CameraGalleryImpl;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3541
    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl$22;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    invoke-static {v2, v4}, Lcom/oneplus/gallery/CameraGalleryImpl;->-set4(Lcom/oneplus/gallery/CameraGalleryImpl;Z)Z

    .line 3546
    :goto_1
    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl$22;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    invoke-static {v2, v5}, Lcom/oneplus/gallery/CameraGalleryImpl;->-wrap58(Lcom/oneplus/gallery/CameraGalleryImpl;Z)V

    .line 3549
    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl$22;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    invoke-static {v2}, Lcom/oneplus/gallery/CameraGalleryImpl;->-get28(Lcom/oneplus/gallery/CameraGalleryImpl;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 3551
    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl$22;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    invoke-static {v2}, Lcom/oneplus/gallery/CameraGalleryImpl;->-get28(Lcom/oneplus/gallery/CameraGalleryImpl;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "media$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/media/Media;

    .line 3552
    .local v0, "media":Lcom/oneplus/gallery2/media/Media;
    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl$22;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    invoke-static {v2, v0}, Lcom/oneplus/gallery/CameraGalleryImpl;->-wrap19(Lcom/oneplus/gallery/CameraGalleryImpl;Lcom/oneplus/gallery2/media/Media;)V

    goto :goto_2

    .line 3543
    .end local v0    # "media":Lcom/oneplus/gallery2/media/Media;
    .end local v1    # "media$iterator":Ljava/util/Iterator;
    :cond_2
    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl$22;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    invoke-static {v2, v4}, Lcom/oneplus/gallery/CameraGalleryImpl;->-wrap20(Lcom/oneplus/gallery/CameraGalleryImpl;Z)V

    goto :goto_1

    .line 3553
    .restart local v1    # "media$iterator":Ljava/util/Iterator;
    :cond_3
    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl$22;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    invoke-static {v2}, Lcom/oneplus/gallery/CameraGalleryImpl;->-get28(Lcom/oneplus/gallery/CameraGalleryImpl;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 3557
    .end local v1    # "media$iterator":Ljava/util/Iterator;
    :cond_4
    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl$22;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    invoke-static {v2}, Lcom/oneplus/gallery/CameraGalleryImpl;->-wrap17(Lcom/oneplus/gallery/CameraGalleryImpl;)V

    .line 3558
    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl$22;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    invoke-static {v2}, Lcom/oneplus/gallery/CameraGalleryImpl;->-wrap18(Lcom/oneplus/gallery/CameraGalleryImpl;)V

    .line 3561
    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl$22;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    invoke-static {v2}, Lcom/oneplus/gallery/CameraGalleryImpl;->-get37(Lcom/oneplus/gallery/CameraGalleryImpl;)Lcom/oneplus/base/Handle;

    move-result-object v2

    invoke-static {v2}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 3562
    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl$22;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    sget-object v3, Lcom/oneplus/media/BitmapPool;->DEFAULT_THUMBNAIL:Lcom/oneplus/media/BitmapPool;

    invoke-virtual {v3}, Lcom/oneplus/media/BitmapPool;->activate()Lcom/oneplus/base/Handle;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/gallery/CameraGalleryImpl;->-set12(Lcom/oneplus/gallery/CameraGalleryImpl;Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    .line 3563
    :cond_5
    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl$22;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    invoke-static {v2}, Lcom/oneplus/gallery/CameraGalleryImpl;->-get36(Lcom/oneplus/gallery/CameraGalleryImpl;)Lcom/oneplus/base/Handle;

    move-result-object v2

    invoke-static {v2}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 3564
    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl$22;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    sget-object v3, Lcom/oneplus/media/BitmapPool;->DEFAULT_THUMBNAIL_SMALL:Lcom/oneplus/media/BitmapPool;

    invoke-virtual {v3}, Lcom/oneplus/media/BitmapPool;->activate()Lcom/oneplus/base/Handle;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/gallery/CameraGalleryImpl;->-set11(Lcom/oneplus/gallery/CameraGalleryImpl;Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    .line 3565
    :cond_6
    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl$22;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    invoke-static {v2}, Lcom/oneplus/gallery/CameraGalleryImpl;->-get22(Lcom/oneplus/gallery/CameraGalleryImpl;)Lcom/oneplus/base/Handle;

    move-result-object v2

    invoke-static {v2}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 3566
    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl$22;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    invoke-static {}, Lcom/oneplus/gallery/CameraGalleryImpl;->-get1()Lcom/oneplus/media/BitmapPool;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oneplus/media/BitmapPool;->activate()Lcom/oneplus/base/Handle;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/gallery/CameraGalleryImpl;->-set6(Lcom/oneplus/gallery/CameraGalleryImpl;Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    .line 3569
    :cond_7
    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl$22;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    invoke-static {v2}, Lcom/oneplus/gallery/CameraGalleryImpl;->-wrap22(Lcom/oneplus/gallery/CameraGalleryImpl;)V

    goto/16 :goto_0

    .line 3574
    :pswitch_3
    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl$22;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    invoke-static {v2}, Lcom/oneplus/gallery/CameraGalleryImpl;->-get16(Lcom/oneplus/gallery/CameraGalleryImpl;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 3575
    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl$22;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    invoke-static {v2, v4}, Lcom/oneplus/gallery/CameraGalleryImpl;->-wrap20(Lcom/oneplus/gallery/CameraGalleryImpl;Z)V

    .line 3578
    :cond_8
    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl$22;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    invoke-static {v2}, Lcom/oneplus/gallery/CameraGalleryImpl;->-wrap23(Lcom/oneplus/gallery/CameraGalleryImpl;)V

    .line 3581
    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl$22;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    iget-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl$22;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    invoke-static {v3}, Lcom/oneplus/gallery/CameraGalleryImpl;->-get27(Lcom/oneplus/gallery/CameraGalleryImpl;)Lcom/oneplus/base/Handle;

    move-result-object v3

    invoke-static {v3}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/gallery/CameraGalleryImpl;->-set7(Lcom/oneplus/gallery/CameraGalleryImpl;Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    goto/16 :goto_0

    .line 3586
    :pswitch_4
    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl$22;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    invoke-static {v2}, Lcom/oneplus/gallery/CameraGalleryImpl;->-get27(Lcom/oneplus/gallery/CameraGalleryImpl;)Lcom/oneplus/base/Handle;

    move-result-object v2

    invoke-static {v2}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl$22;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    invoke-static {v2}, Lcom/oneplus/gallery/CameraGalleryImpl;->-get26(Lcom/oneplus/gallery/CameraGalleryImpl;)Lcom/oneplus/gallery2/media/MediaStoreMediaSource;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3587
    iget-object v2, p0, Lcom/oneplus/gallery/CameraGalleryImpl$22;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    iget-object v3, p0, Lcom/oneplus/gallery/CameraGalleryImpl$22;->this$0:Lcom/oneplus/gallery/CameraGalleryImpl;

    invoke-static {v3}, Lcom/oneplus/gallery/CameraGalleryImpl;->-get26(Lcom/oneplus/gallery/CameraGalleryImpl;)Lcom/oneplus/gallery2/media/MediaStoreMediaSource;

    move-result-object v3

    sget v4, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->FLAG_CAMERA_ROLL_ONLY:I

    invoke-virtual {v3, v4}, Lcom/oneplus/gallery2/media/MediaStoreMediaSource;->activate(I)Lcom/oneplus/base/Handle;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/gallery/CameraGalleryImpl;->-set7(Lcom/oneplus/gallery/CameraGalleryImpl;Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    goto/16 :goto_0

    .line 3512
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method
