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
    .line 822
    iput-object p1, p0, Lcom/android/server/display/ColorBalanceService$CMH;->this$0:Lcom/android/server/display/ColorBalanceService;

    .line 823
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 822
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v7, 0x6

    const/4 v10, 0x0

    .line 827
    iget-object v8, p0, Lcom/android/server/display/ColorBalanceService$CMH;->this$0:Lcom/android/server/display/ColorBalanceService;

    invoke-static {v8}, Lcom/android/server/display/ColorBalanceService;->-get1(Lcom/android/server/display/ColorBalanceService;)Lcom/qti/snapdragon/sdk/display/ColorManager;

    move-result-object v8

    if-nez v8, :cond_2

    .line 828
    const/16 v5, 0x19

    .line 829
    .local v5, "retryCount":I
    :goto_0
    if-lez v5, :cond_1

    iget-object v8, p0, Lcom/android/server/display/ColorBalanceService$CMH;->this$0:Lcom/android/server/display/ColorBalanceService;

    invoke-static {v8}, Lcom/android/server/display/ColorBalanceService;->-get1(Lcom/android/server/display/ColorBalanceService;)Lcom/qti/snapdragon/sdk/display/ColorManager;

    move-result-object v8

    if-nez v8, :cond_1

    .line 830
    iget-object v8, p0, Lcom/android/server/display/ColorBalanceService$CMH;->this$0:Lcom/android/server/display/ColorBalanceService;

    invoke-static {v8}, Lcom/android/server/display/ColorBalanceService;->-wrap0(Lcom/android/server/display/ColorBalanceService;)Z

    .line 831
    iget-object v8, p0, Lcom/android/server/display/ColorBalanceService$CMH;->this$0:Lcom/android/server/display/ColorBalanceService;

    invoke-static {v8}, Lcom/android/server/display/ColorBalanceService;->-get1(Lcom/android/server/display/ColorBalanceService;)Lcom/qti/snapdragon/sdk/display/ColorManager;

    move-result-object v8

    if-nez v8, :cond_0

    .line 832
    const-string/jumbo v8, "ColorBalanceService"

    const-string/jumbo v9, "init error,wait 1s and reinit!"

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 834
    const-wide/16 v8, 0xc8

    :try_start_0
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 829
    :cond_0
    :goto_1
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    .line 835
    :catch_0
    move-exception v2

    .line 836
    .local v2, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 840
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :cond_1
    const-string/jumbo v8, "ColorBalanceService"

    const-string/jumbo v9, "reinit ColorManager!"

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 842
    .end local v5    # "retryCount":I
    :cond_2
    iget-object v8, p0, Lcom/android/server/display/ColorBalanceService$CMH;->this$0:Lcom/android/server/display/ColorBalanceService;

    invoke-static {v8}, Lcom/android/server/display/ColorBalanceService;->-get1(Lcom/android/server/display/ColorBalanceService;)Lcom/qti/snapdragon/sdk/display/ColorManager;

    move-result-object v8

    if-nez v8, :cond_3

    .line 843
    const-string/jumbo v7, "ColorBalanceService"

    const-string/jumbo v8, "reinit ColorManager error!"

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 844
    return-void

    .line 846
    :cond_3
    iget v8, p1, Landroid/os/Message;->what:I

    packed-switch v8, :pswitch_data_0

    .line 942
    :pswitch_0
    const-string/jumbo v7, "ColorBalanceService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "msg:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Landroid/os/Message;->what:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 826
    :cond_4
    :goto_2
    return-void

    .line 848
    :pswitch_1
    iget-object v7, p0, Lcom/android/server/display/ColorBalanceService$CMH;->this$0:Lcom/android/server/display/ColorBalanceService;

    iget-object v8, p0, Lcom/android/server/display/ColorBalanceService$CMH;->this$0:Lcom/android/server/display/ColorBalanceService;

    invoke-static {v8}, Lcom/android/server/display/ColorBalanceService;->-get5(Lcom/android/server/display/ColorBalanceService;)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    iget v9, p1, Landroid/os/Message;->arg1:I

    invoke-static {v7, v8, v9}, Lcom/android/server/display/ColorBalanceService;->-wrap3(Lcom/android/server/display/ColorBalanceService;ZI)V

    goto :goto_2

    .line 852
    :pswitch_2
    iget-object v7, p0, Lcom/android/server/display/ColorBalanceService$CMH;->this$0:Lcom/android/server/display/ColorBalanceService;

    invoke-static {v7}, Lcom/android/server/display/ColorBalanceService;->-get3(Lcom/android/server/display/ColorBalanceService;)I

    move-result v7

    const/16 v8, -0x2710

    if-eq v7, v8, :cond_4

    iget-object v7, p0, Lcom/android/server/display/ColorBalanceService$CMH;->this$0:Lcom/android/server/display/ColorBalanceService;

    invoke-static {v7}, Lcom/android/server/display/ColorBalanceService;->-get7(Lcom/android/server/display/ColorBalanceService;)Landroid/database/ContentObserver;

    move-result-object v7

    if-nez v7, :cond_4

    .line 853
    iget-object v7, p0, Lcom/android/server/display/ColorBalanceService$CMH;->this$0:Lcom/android/server/display/ColorBalanceService;

    invoke-static {v7}, Lcom/android/server/display/ColorBalanceService;->-wrap8(Lcom/android/server/display/ColorBalanceService;)V

    goto :goto_2

    .line 858
    :pswitch_3
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v8

    const-string/jumbo v9, "value"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 859
    .local v6, "v":I
    const/16 v8, -0x200

    if-ne v6, v8, :cond_7

    .line 860
    iget-object v7, p0, Lcom/android/server/display/ColorBalanceService$CMH;->this$0:Lcom/android/server/display/ColorBalanceService;

    invoke-static {v7}, Lcom/android/server/display/ColorBalanceService;->-get5(Lcom/android/server/display/ColorBalanceService;)Ljava/lang/Boolean;

    move-result-object v7

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/android/server/display/ColorBalanceService$CMH;->this$0:Lcom/android/server/display/ColorBalanceService;

    invoke-static {v7}, Lcom/android/server/display/ColorBalanceService;->-get5(Lcom/android/server/display/ColorBalanceService;)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-nez v7, :cond_4

    .line 862
    :cond_5
    const-wide/16 v8, 0x64

    :try_start_1
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 866
    :goto_3
    iget-object v7, p0, Lcom/android/server/display/ColorBalanceService$CMH;->this$0:Lcom/android/server/display/ColorBalanceService;

    invoke-static {v7}, Lcom/android/server/display/ColorBalanceService;->-get6(Lcom/android/server/display/ColorBalanceService;)I

    move-result v3

    .line 867
    .local v3, "i":I
    :goto_4
    if-lez v3, :cond_6

    .line 868
    iget-object v7, p0, Lcom/android/server/display/ColorBalanceService$CMH;->this$0:Lcom/android/server/display/ColorBalanceService;

    invoke-static {v7}, Lcom/android/server/display/ColorBalanceService;->-get1(Lcom/android/server/display/ColorBalanceService;)Lcom/qti/snapdragon/sdk/display/ColorManager;

    move-result-object v7

    invoke-virtual {v7, v3}, Lcom/qti/snapdragon/sdk/display/ColorManager;->setActiveMode(I)I

    .line 869
    const-string/jumbo v7, "ColorBalanceService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "touch stop,setActiveMode:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/display/ColorBalanceService$CMH;->this$0:Lcom/android/server/display/ColorBalanceService;

    invoke-static {v9}, Lcom/android/server/display/ColorBalanceService;->-get6(Lcom/android/server/display/ColorBalanceService;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 871
    :try_start_2
    iget-object v7, p0, Lcom/android/server/display/ColorBalanceService$CMH;->this$0:Lcom/android/server/display/ColorBalanceService;

    invoke-static {v7}, Lcom/android/server/display/ColorBalanceService;->-get6(Lcom/android/server/display/ColorBalanceService;)I

    move-result v7

    const/16 v8, 0x12c

    div-int v7, v8, v7

    int-to-long v8, v7

    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2

    .line 867
    :goto_5
    add-int/lit8 v3, v3, -0x1

    goto :goto_4

    .line 863
    .end local v3    # "i":I
    :catch_1
    move-exception v2

    .line 864
    .restart local v2    # "e":Ljava/lang/InterruptedException;
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_3

    .line 872
    .end local v2    # "e":Ljava/lang/InterruptedException;
    .restart local v3    # "i":I
    :catch_2
    move-exception v2

    .line 873
    .restart local v2    # "e":Ljava/lang/InterruptedException;
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_5

    .line 876
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :cond_6
    iget-object v7, p0, Lcom/android/server/display/ColorBalanceService$CMH;->this$0:Lcom/android/server/display/ColorBalanceService;

    invoke-static {v7}, Lcom/android/server/display/ColorBalanceService;->-wrap5(Lcom/android/server/display/ColorBalanceService;)V

    goto/16 :goto_2

    .line 879
    .end local v3    # "i":I
    :cond_7
    const/16 v8, 0x190

    if-ge v6, v8, :cond_b

    .line 880
    add-int/lit8 v8, v6, 0x38

    rsub-int v6, v8, 0x84

    .line 881
    const/16 v8, 0x84

    if-ne v6, v8, :cond_a

    move v4, v7

    .line 882
    .local v4, "mNightColorMode":I
    :goto_6
    if-gt v4, v7, :cond_8

    if-gez v4, :cond_9

    .line 883
    :cond_8
    const/4 v4, 0x4

    .line 885
    :cond_9
    iget-object v7, p0, Lcom/android/server/display/ColorBalanceService$CMH;->this$0:Lcom/android/server/display/ColorBalanceService;

    invoke-static {v7}, Lcom/android/server/display/ColorBalanceService;->-get1(Lcom/android/server/display/ColorBalanceService;)Lcom/qti/snapdragon/sdk/display/ColorManager;

    move-result-object v7

    invoke-virtual {v7, v4}, Lcom/qti/snapdragon/sdk/display/ColorManager;->setActiveMode(I)I

    .line 886
    const-string/jumbo v7, "ColorBalanceService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setActiveMode:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 881
    .end local v4    # "mNightColorMode":I
    :cond_a
    div-int/lit8 v8, v6, 0x16

    add-int/lit8 v4, v8, 0x1

    goto :goto_6

    .line 888
    :cond_b
    add-int/lit16 v6, v6, -0x200

    .line 889
    add-int/lit8 v6, v6, -0x2b

    .line 890
    const-string/jumbo v7, "ColorBalanceService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setColorBalance:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 891
    iget-object v7, p0, Lcom/android/server/display/ColorBalanceService$CMH;->this$0:Lcom/android/server/display/ColorBalanceService;

    invoke-static {v7}, Lcom/android/server/display/ColorBalanceService;->-get1(Lcom/android/server/display/ColorBalanceService;)Lcom/qti/snapdragon/sdk/display/ColorManager;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/qti/snapdragon/sdk/display/ColorManager;->setColorBalance(I)I

    goto/16 :goto_2

    .line 896
    .end local v6    # "v":I
    :pswitch_4
    const-string/jumbo v7, "ColorBalanceService"

    const-string/jumbo v8, "MSG_SCREEN_ON"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 897
    iget-object v7, p0, Lcom/android/server/display/ColorBalanceService$CMH;->this$0:Lcom/android/server/display/ColorBalanceService;

    const/4 v8, 0x1

    invoke-static {v7, v8}, Lcom/android/server/display/ColorBalanceService;->-wrap4(Lcom/android/server/display/ColorBalanceService;Z)V

    goto/16 :goto_2

    .line 900
    :pswitch_5
    const-string/jumbo v7, "ColorBalanceService"

    const-string/jumbo v8, "MSG_SCREEN_OFF"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 901
    iget-object v7, p0, Lcom/android/server/display/ColorBalanceService$CMH;->this$0:Lcom/android/server/display/ColorBalanceService;

    invoke-static {v7, v10}, Lcom/android/server/display/ColorBalanceService;->-wrap4(Lcom/android/server/display/ColorBalanceService;Z)V

    goto/16 :goto_2

    .line 904
    :pswitch_6
    iget-object v7, p0, Lcom/android/server/display/ColorBalanceService$CMH;->this$0:Lcom/android/server/display/ColorBalanceService;

    invoke-static {v7}, Lcom/android/server/display/ColorBalanceService;->-wrap6(Lcom/android/server/display/ColorBalanceService;)V

    .line 905
    const-string/jumbo v7, "ColorBalanceService"

    const-string/jumbo v8, "save mode"

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 908
    :pswitch_7
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v7

    const-string/jumbo v8, "value"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 924
    .local v0, "amode":I
    const-wide/16 v8, 0x64

    :try_start_3
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_3

    .line 928
    :goto_7
    iget-object v7, p0, Lcom/android/server/display/ColorBalanceService$CMH;->this$0:Lcom/android/server/display/ColorBalanceService;

    invoke-static {v7}, Lcom/android/server/display/ColorBalanceService;->-wrap5(Lcom/android/server/display/ColorBalanceService;)V

    .line 931
    const-string/jumbo v7, "ColorBalanceService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "AMODE:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 925
    :catch_3
    move-exception v2

    .line 926
    .restart local v2    # "e":Ljava/lang/InterruptedException;
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_7

    .line 934
    .end local v0    # "amode":I
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :pswitch_8
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v7

    const-string/jumbo v8, "value"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 935
    .local v1, "dmode":I
    iget-object v7, p0, Lcom/android/server/display/ColorBalanceService$CMH;->this$0:Lcom/android/server/display/ColorBalanceService;

    invoke-static {v7}, Lcom/android/server/display/ColorBalanceService;->-get1(Lcom/android/server/display/ColorBalanceService;)Lcom/qti/snapdragon/sdk/display/ColorManager;

    move-result-object v7

    invoke-virtual {v7, v1}, Lcom/qti/snapdragon/sdk/display/ColorManager;->setDefaultMode(I)I

    .line 936
    const-string/jumbo v7, "ColorBalanceService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "AMODE:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 939
    .end local v1    # "dmode":I
    :pswitch_9
    iget-object v7, p0, Lcom/android/server/display/ColorBalanceService$CMH;->this$0:Lcom/android/server/display/ColorBalanceService;

    invoke-static {v7}, Lcom/android/server/display/ColorBalanceService;->-wrap5(Lcom/android/server/display/ColorBalanceService;)V

    goto/16 :goto_2

    .line 846
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_9
        :pswitch_1
    .end packed-switch
.end method
