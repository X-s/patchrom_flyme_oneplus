.class final Lcom/android/server/display/ColorBalanceService$CMH;
.super Landroid/os/Handler;
.source "ColorBalanceService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/ColorBalanceService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CMH"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/ColorBalanceService;


# direct methods
.method public constructor <init>(Lcom/android/server/display/ColorBalanceService;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/display/ColorBalanceService;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 2725
    iput-object p1, p0, Lcom/android/server/display/ColorBalanceService$CMH;->this$0:Lcom/android/server/display/ColorBalanceService;

    .line 2726
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2725
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v8, 0x1194

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 2732
    iget-object v3, p0, Lcom/android/server/display/ColorBalanceService$CMH;->this$0:Lcom/android/server/display/ColorBalanceService;

    invoke-static {v3}, Lcom/android/server/display/ColorBalanceService;->-wrap0(Lcom/android/server/display/ColorBalanceService;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2733
    iget-object v3, p0, Lcom/android/server/display/ColorBalanceService$CMH;->this$0:Lcom/android/server/display/ColorBalanceService;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/display/ColorBalanceService;->-set3(Lcom/android/server/display/ColorBalanceService;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 2734
    const-string/jumbo v3, "ColorBalanceService"

    const-string/jumbo v4, "mCmgr is null!"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2735
    return-void

    .line 2737
    :cond_0
    iget-object v3, p0, Lcom/android/server/display/ColorBalanceService$CMH;->this$0:Lcom/android/server/display/ColorBalanceService;

    invoke-static {v3}, Lcom/android/server/display/ColorBalanceService;->-get17(Lcom/android/server/display/ColorBalanceService;)Landroid/hardware/display/SDManager;

    move-result-object v3

    if-nez v3, :cond_1

    .line 2738
    iget-object v3, p0, Lcom/android/server/display/ColorBalanceService$CMH;->this$0:Lcom/android/server/display/ColorBalanceService;

    new-instance v4, Landroid/hardware/display/SDManager;

    iget-object v5, p0, Lcom/android/server/display/ColorBalanceService$CMH;->this$0:Lcom/android/server/display/ColorBalanceService;

    invoke-static {v5}, Lcom/android/server/display/ColorBalanceService;->-get2(Lcom/android/server/display/ColorBalanceService;)Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/hardware/display/SDManager;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v4}, Lcom/android/server/display/ColorBalanceService;->-set12(Lcom/android/server/display/ColorBalanceService;Landroid/hardware/display/SDManager;)Landroid/hardware/display/SDManager;

    .line 2740
    :cond_1
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 2819
    :pswitch_0
    const-string/jumbo v3, "ColorBalanceService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "msg:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2730
    :cond_2
    :goto_0
    return-void

    .line 2742
    :pswitch_1
    const-string/jumbo v3, "ColorBalanceService"

    const-string/jumbo v4, "MSG_SCREEN_ON"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2743
    iget-object v3, p0, Lcom/android/server/display/ColorBalanceService$CMH;->this$0:Lcom/android/server/display/ColorBalanceService;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/display/ColorBalanceService;->-set4(Lcom/android/server/display/ColorBalanceService;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 2744
    iget-object v3, p0, Lcom/android/server/display/ColorBalanceService$CMH;->this$0:Lcom/android/server/display/ColorBalanceService;

    invoke-static {v3, v7}, Lcom/android/server/display/ColorBalanceService;->-wrap10(Lcom/android/server/display/ColorBalanceService;Z)V

    goto :goto_0

    .line 2747
    :pswitch_2
    const-string/jumbo v3, "ColorBalanceService"

    const-string/jumbo v4, "MSG_SCREEN_OFF"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2748
    iget-object v3, p0, Lcom/android/server/display/ColorBalanceService$CMH;->this$0:Lcom/android/server/display/ColorBalanceService;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/display/ColorBalanceService;->-set4(Lcom/android/server/display/ColorBalanceService;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 2753
    iget-object v3, p0, Lcom/android/server/display/ColorBalanceService$CMH;->this$0:Lcom/android/server/display/ColorBalanceService;

    invoke-static {v3, v6}, Lcom/android/server/display/ColorBalanceService;->-wrap10(Lcom/android/server/display/ColorBalanceService;Z)V

    goto :goto_0

    .line 2756
    :pswitch_3
    iget-object v3, p0, Lcom/android/server/display/ColorBalanceService$CMH;->this$0:Lcom/android/server/display/ColorBalanceService;

    iget-object v4, p0, Lcom/android/server/display/ColorBalanceService$CMH;->this$0:Lcom/android/server/display/ColorBalanceService;

    invoke-static {v4}, Lcom/android/server/display/ColorBalanceService;->-get7(Lcom/android/server/display/ColorBalanceService;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-static {v3, v4, v5}, Lcom/android/server/display/ColorBalanceService;->-wrap6(Lcom/android/server/display/ColorBalanceService;ZI)V

    goto :goto_0

    .line 2759
    :pswitch_4
    iget-object v3, p0, Lcom/android/server/display/ColorBalanceService$CMH;->this$0:Lcom/android/server/display/ColorBalanceService;

    iget-object v4, p0, Lcom/android/server/display/ColorBalanceService$CMH;->this$0:Lcom/android/server/display/ColorBalanceService;

    invoke-static {v4}, Lcom/android/server/display/ColorBalanceService;->-get8(Lcom/android/server/display/ColorBalanceService;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    iget v5, p1, Landroid/os/Message;->arg1:I

    iget v6, p1, Landroid/os/Message;->arg2:I

    invoke-static {v3, v4, v5, v6}, Lcom/android/server/display/ColorBalanceService;->-wrap12(Lcom/android/server/display/ColorBalanceService;ZII)V

    goto :goto_0

    .line 2762
    :pswitch_5
    iget-object v3, p0, Lcom/android/server/display/ColorBalanceService$CMH;->this$0:Lcom/android/server/display/ColorBalanceService;

    iget v4, p1, Landroid/os/Message;->arg1:I

    iget v5, p1, Landroid/os/Message;->arg2:I

    invoke-static {v3, v4, v5}, Lcom/android/server/display/ColorBalanceService;->-wrap4(Lcom/android/server/display/ColorBalanceService;II)V

    goto :goto_0

    .line 2765
    :pswitch_6
    iget-object v3, p0, Lcom/android/server/display/ColorBalanceService$CMH;->this$0:Lcom/android/server/display/ColorBalanceService;

    iget v4, p1, Landroid/os/Message;->arg1:I

    iget v5, p1, Landroid/os/Message;->arg2:I

    invoke-static {v3, v4, v5}, Lcom/android/server/display/ColorBalanceService;->-wrap3(Lcom/android/server/display/ColorBalanceService;II)V

    goto :goto_0

    .line 2768
    :pswitch_7
    iget-object v3, p0, Lcom/android/server/display/ColorBalanceService$CMH;->this$0:Lcom/android/server/display/ColorBalanceService;

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-static {v3, v4}, Lcom/android/server/display/ColorBalanceService;->-wrap11(Lcom/android/server/display/ColorBalanceService;I)V

    goto :goto_0

    .line 2771
    :pswitch_8
    iget-object v3, p0, Lcom/android/server/display/ColorBalanceService$CMH;->this$0:Lcom/android/server/display/ColorBalanceService;

    invoke-static {v3}, Lcom/android/server/display/ColorBalanceService;->-wrap14(Lcom/android/server/display/ColorBalanceService;)V

    goto :goto_0

    .line 2775
    :pswitch_9
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 2776
    .local v0, "amode":I
    iget-object v3, p0, Lcom/android/server/display/ColorBalanceService$CMH;->this$0:Lcom/android/server/display/ColorBalanceService;

    invoke-static {v3}, Lcom/android/server/display/ColorBalanceService;->-get1(Lcom/android/server/display/ColorBalanceService;)Lcom/qti/snapdragon/sdk/display/ColorManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/qti/snapdragon/sdk/display/ColorManager;->setActiveMode(I)I

    .line 2777
    const-string/jumbo v3, "ColorBalanceService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "AMODE:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2781
    .end local v0    # "amode":I
    :pswitch_a
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 2782
    .local v2, "dmode":I
    iget-object v3, p0, Lcom/android/server/display/ColorBalanceService$CMH;->this$0:Lcom/android/server/display/ColorBalanceService;

    invoke-static {v3}, Lcom/android/server/display/ColorBalanceService;->-get1(Lcom/android/server/display/ColorBalanceService;)Lcom/qti/snapdragon/sdk/display/ColorManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/qti/snapdragon/sdk/display/ColorManager;->setDefaultMode(I)I

    .line 2783
    const-string/jumbo v3, "ColorBalanceService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "AMODE:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2786
    .end local v2    # "dmode":I
    :pswitch_b
    iget-object v3, p0, Lcom/android/server/display/ColorBalanceService$CMH;->this$0:Lcom/android/server/display/ColorBalanceService;

    invoke-static {v3, p1}, Lcom/android/server/display/ColorBalanceService;->-wrap8(Lcom/android/server/display/ColorBalanceService;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 2789
    :pswitch_c
    iget-object v3, p0, Lcom/android/server/display/ColorBalanceService$CMH;->this$0:Lcom/android/server/display/ColorBalanceService;

    invoke-static {v3, p1}, Lcom/android/server/display/ColorBalanceService;->-wrap9(Lcom/android/server/display/ColorBalanceService;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 2792
    :pswitch_d
    iget-object v3, p0, Lcom/android/server/display/ColorBalanceService$CMH;->this$0:Lcom/android/server/display/ColorBalanceService;

    invoke-static {v3}, Lcom/android/server/display/ColorBalanceService;->-wrap13(Lcom/android/server/display/ColorBalanceService;)V

    goto/16 :goto_0

    .line 2795
    :pswitch_e
    iget-object v3, p0, Lcom/android/server/display/ColorBalanceService$CMH;->this$0:Lcom/android/server/display/ColorBalanceService;

    invoke-static {v3}, Lcom/android/server/display/ColorBalanceService;->-get11(Lcom/android/server/display/ColorBalanceService;)I

    move-result v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    if-ne v3, v4, :cond_2

    .line 2796
    iget-object v3, p0, Lcom/android/server/display/ColorBalanceService$CMH;->this$0:Lcom/android/server/display/ColorBalanceService;

    invoke-static {v3}, Lcom/android/server/display/ColorBalanceService;->-get21(Lcom/android/server/display/ColorBalanceService;)I

    move-result v3

    if-eq v3, v8, :cond_2

    .line 2797
    iget-object v3, p0, Lcom/android/server/display/ColorBalanceService$CMH;->this$0:Lcom/android/server/display/ColorBalanceService;

    invoke-static {v3, v8}, Lcom/android/server/display/ColorBalanceService;->-set14(Lcom/android/server/display/ColorBalanceService;I)I

    .line 2798
    iget-object v3, p0, Lcom/android/server/display/ColorBalanceService$CMH;->this$0:Lcom/android/server/display/ColorBalanceService;

    invoke-static {v3, v6}, Lcom/android/server/display/ColorBalanceService;->-set8(Lcom/android/server/display/ColorBalanceService;I)I

    .line 2799
    iget-object v3, p0, Lcom/android/server/display/ColorBalanceService$CMH;->this$0:Lcom/android/server/display/ColorBalanceService;

    invoke-static {v3}, Lcom/android/server/display/ColorBalanceService;->-wrap7(Lcom/android/server/display/ColorBalanceService;)V

    goto/16 :goto_0

    .line 2804
    :pswitch_f
    const-string/jumbo v3, "ColorBalanceService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "MSG_CHECK_SRGBSEN,generation:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/display/ColorBalanceService$CMH;->this$0:Lcom/android/server/display/ColorBalanceService;

    invoke-static {v5}, Lcom/android/server/display/ColorBalanceService;->-get20(Lcom/android/server/display/ColorBalanceService;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2805
    const-string/jumbo v5, " =? "

    .line 2804
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2805
    iget v5, p1, Landroid/os/Message;->arg1:I

    .line 2804
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2805
    const-string/jumbo v5, " color:"

    .line 2804
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2805
    iget-object v5, p0, Lcom/android/server/display/ColorBalanceService$CMH;->this$0:Lcom/android/server/display/ColorBalanceService;

    invoke-static {v5}, Lcom/android/server/display/ColorBalanceService;->-get19(Lcom/android/server/display/ColorBalanceService;)I

    move-result v5

    .line 2804
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2806
    iget-object v3, p0, Lcom/android/server/display/ColorBalanceService$CMH;->this$0:Lcom/android/server/display/ColorBalanceService;

    invoke-static {v3}, Lcom/android/server/display/ColorBalanceService;->-get20(Lcom/android/server/display/ColorBalanceService;)I

    move-result v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    if-ne v3, v4, :cond_2

    .line 2807
    const/4 v1, 0x0

    .line 2808
    .local v1, "delta":I
    iget-object v3, p0, Lcom/android/server/display/ColorBalanceService$CMH;->this$0:Lcom/android/server/display/ColorBalanceService;

    invoke-static {v3}, Lcom/android/server/display/ColorBalanceService;->-get21(Lcom/android/server/display/ColorBalanceService;)I

    move-result v3

    if-eqz v3, :cond_3

    .line 2809
    iget-object v3, p0, Lcom/android/server/display/ColorBalanceService$CMH;->this$0:Lcom/android/server/display/ColorBalanceService;

    invoke-static {v3}, Lcom/android/server/display/ColorBalanceService;->-get21(Lcom/android/server/display/ColorBalanceService;)I

    move-result v3

    iget-object v4, p0, Lcom/android/server/display/ColorBalanceService$CMH;->this$0:Lcom/android/server/display/ColorBalanceService;

    invoke-static {v4}, Lcom/android/server/display/ColorBalanceService;->-get19(Lcom/android/server/display/ColorBalanceService;)I

    move-result v4

    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 2810
    :cond_3
    const-string/jumbo v3, "ColorBalanceService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mStableColor:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/display/ColorBalanceService$CMH;->this$0:Lcom/android/server/display/ColorBalanceService;

    invoke-static {v5}, Lcom/android/server/display/ColorBalanceService;->-get21(Lcom/android/server/display/ColorBalanceService;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2811
    const-string/jumbo v5, " delat:"

    .line 2810
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2812
    iget-object v3, p0, Lcom/android/server/display/ColorBalanceService$CMH;->this$0:Lcom/android/server/display/ColorBalanceService;

    iget-object v4, p0, Lcom/android/server/display/ColorBalanceService$CMH;->this$0:Lcom/android/server/display/ColorBalanceService;

    invoke-static {v4}, Lcom/android/server/display/ColorBalanceService;->-get19(Lcom/android/server/display/ColorBalanceService;)I

    move-result v4

    invoke-static {v3, v4}, Lcom/android/server/display/ColorBalanceService;->-set14(Lcom/android/server/display/ColorBalanceService;I)I

    .line 2813
    const/16 v3, 0x1f4

    if-le v1, v3, :cond_2

    .line 2814
    iget-object v3, p0, Lcom/android/server/display/ColorBalanceService$CMH;->this$0:Lcom/android/server/display/ColorBalanceService;

    invoke-static {v3}, Lcom/android/server/display/ColorBalanceService;->-wrap7(Lcom/android/server/display/ColorBalanceService;)V

    goto/16 :goto_0

    .line 2740
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_0
        :pswitch_b
        :pswitch_c
        :pswitch_3
        :pswitch_4
        :pswitch_d
        :pswitch_6
        :pswitch_5
        :pswitch_f
        :pswitch_e
    .end packed-switch
.end method
