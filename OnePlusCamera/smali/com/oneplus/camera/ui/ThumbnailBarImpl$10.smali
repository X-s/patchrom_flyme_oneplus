.class Lcom/oneplus/camera/ui/ThumbnailBarImpl$10;
.super Ljava/lang/Object;
.source "ThumbnailBarImpl.java"

# interfaces
.implements Lcom/oneplus/base/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/ui/ThumbnailBarImpl;->onInitialize()V
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

.field final synthetic this$0:Lcom/oneplus/camera/ui/ThumbnailBarImpl;


# direct methods
.method private static synthetic -getcom-oneplus-base-BaseActivity$StateSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$10;->-com-oneplus-base-BaseActivity$StateSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$10;->-com-oneplus-base-BaseActivity$StateSwitchesValues:[I

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

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_a

    :goto_0
    :try_start_1
    sget-object v1, Lcom/oneplus/base/BaseActivity$State;->DESTROYED:Lcom/oneplus/base/BaseActivity$State;

    invoke-virtual {v1}, Lcom/oneplus/base/BaseActivity$State;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_9

    :goto_1
    :try_start_2
    sget-object v1, Lcom/oneplus/base/BaseActivity$State;->DESTROYING:Lcom/oneplus/base/BaseActivity$State;

    invoke-virtual {v1}, Lcom/oneplus/base/BaseActivity$State;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_8

    :goto_2
    :try_start_3
    sget-object v1, Lcom/oneplus/base/BaseActivity$State;->NEW:Lcom/oneplus/base/BaseActivity$State;

    invoke-virtual {v1}, Lcom/oneplus/base/BaseActivity$State;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_7

    :goto_3
    :try_start_4
    sget-object v1, Lcom/oneplus/base/BaseActivity$State;->NEW_INTENT:Lcom/oneplus/base/BaseActivity$State;

    invoke-virtual {v1}, Lcom/oneplus/base/BaseActivity$State;->ordinal()I

    move-result v1

    const/16 v2, 0x9

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

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_4

    :goto_6
    :try_start_7
    sget-object v1, Lcom/oneplus/base/BaseActivity$State;->RESUMING:Lcom/oneplus/base/BaseActivity$State;

    invoke-virtual {v1}, Lcom/oneplus/base/BaseActivity$State;->ordinal()I

    move-result v1

    const/4 v2, 0x2

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

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_1

    :goto_9
    :try_start_a
    sget-object v1, Lcom/oneplus/base/BaseActivity$State;->STOPPED:Lcom/oneplus/base/BaseActivity$State;

    invoke-virtual {v1}, Lcom/oneplus/base/BaseActivity$State;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_0

    :goto_a
    sput-object v0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$10;->-com-oneplus-base-BaseActivity$StateSwitchesValues:[I

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

.method constructor <init>(Lcom/oneplus/camera/ui/ThumbnailBarImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/camera/ui/ThumbnailBarImpl;

    .prologue
    .line 971
    iput-object p1, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$10;->this$0:Lcom/oneplus/camera/ui/ThumbnailBarImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/oneplus/base/PropertySource;Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangeEventArgs;)V
    .locals 4
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
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 977
    invoke-static {}, Lcom/oneplus/camera/ui/ThumbnailBarImpl$10;->-getcom-oneplus-base-BaseActivity$StateSwitchesValues()[I

    move-result-object v1

    invoke-virtual {p3}, Lcom/oneplus/base/PropertyChangeEventArgs;->getNewValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/base/BaseActivity$State;

    invoke-virtual {v0}, Lcom/oneplus/base/BaseActivity$State;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 975
    :cond_0
    :goto_0
    return-void

    .line 980
    :pswitch_0
    iget-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$10;->this$0:Lcom/oneplus/camera/ui/ThumbnailBarImpl;

    iget-object v1, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$10;->this$0:Lcom/oneplus/camera/ui/ThumbnailBarImpl;

    invoke-static {v1}, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->-get10(Lcom/oneplus/camera/ui/ThumbnailBarImpl;)Lcom/oneplus/base/Handle;

    move-result-object v1

    invoke-static {v1}, Lcom/oneplus/base/Handle;->close(Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->-set7(Lcom/oneplus/camera/ui/ThumbnailBarImpl;Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    goto :goto_0

    .line 985
    :pswitch_1
    iget-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$10;->this$0:Lcom/oneplus/camera/ui/ThumbnailBarImpl;

    invoke-static {v0}, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->-get10(Lcom/oneplus/camera/ui/ThumbnailBarImpl;)Lcom/oneplus/base/Handle;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/base/Handle;->isValid(Lcom/oneplus/base/Handle;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 986
    iget-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$10;->this$0:Lcom/oneplus/camera/ui/ThumbnailBarImpl;

    invoke-static {}, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->-get1()Lcom/oneplus/media/CenterCroppedBitmapPool;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/media/CenterCroppedBitmapPool;->activate()Lcom/oneplus/base/Handle;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->-set7(Lcom/oneplus/camera/ui/ThumbnailBarImpl;Lcom/oneplus/base/Handle;)Lcom/oneplus/base/Handle;

    goto :goto_0

    .line 991
    :pswitch_2
    iget-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$10;->this$0:Lcom/oneplus/camera/ui/ThumbnailBarImpl;

    invoke-static {v0, v3}, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->-set6(Lcom/oneplus/camera/ui/ThumbnailBarImpl;Ljava/lang/String;)Ljava/lang/String;

    .line 992
    iget-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$10;->this$0:Lcom/oneplus/camera/ui/ThumbnailBarImpl;

    invoke-static {v0, v2}, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->-wrap6(Lcom/oneplus/camera/ui/ThumbnailBarImpl;Z)V

    goto :goto_0

    .line 997
    :pswitch_3
    iget-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$10;->this$0:Lcom/oneplus/camera/ui/ThumbnailBarImpl;

    invoke-static {v0}, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->-wrap1(Lcom/oneplus/camera/ui/ThumbnailBarImpl;)V

    .line 998
    iget-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$10;->this$0:Lcom/oneplus/camera/ui/ThumbnailBarImpl;

    invoke-static {v0}, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->-wrap3(Lcom/oneplus/camera/ui/ThumbnailBarImpl;)V

    .line 999
    iget-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$10;->this$0:Lcom/oneplus/camera/ui/ThumbnailBarImpl;

    invoke-static {v0, v3}, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->-set6(Lcom/oneplus/camera/ui/ThumbnailBarImpl;Ljava/lang/String;)Ljava/lang/String;

    .line 1000
    iget-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$10;->this$0:Lcom/oneplus/camera/ui/ThumbnailBarImpl;

    invoke-static {v0, v2}, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->-wrap6(Lcom/oneplus/camera/ui/ThumbnailBarImpl;Z)V

    .line 1001
    iget-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$10;->this$0:Lcom/oneplus/camera/ui/ThumbnailBarImpl;

    invoke-static {v0}, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->-get4(Lcom/oneplus/camera/ui/ThumbnailBarImpl;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1003
    iget-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$10;->this$0:Lcom/oneplus/camera/ui/ThumbnailBarImpl;

    iget-object v1, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$10;->this$0:Lcom/oneplus/camera/ui/ThumbnailBarImpl;

    invoke-static {v1}, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->-get9(Lcom/oneplus/camera/ui/ThumbnailBarImpl;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/base/HandlerUtils;->removeCallbacks(Lcom/oneplus/base/HandlerObject;Ljava/lang/Runnable;)V

    .line 1004
    iget-object v0, p0, Lcom/oneplus/camera/ui/ThumbnailBarImpl$10;->this$0:Lcom/oneplus/camera/ui/ThumbnailBarImpl;

    invoke-static {v0, v2}, Lcom/oneplus/camera/ui/ThumbnailBarImpl;->-set2(Lcom/oneplus/camera/ui/ThumbnailBarImpl;Z)Z

    goto :goto_0

    .line 977
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
