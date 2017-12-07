.class final Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;
.super Ljava/lang/Object;
.source "ZenModeHelper.java"

# interfaces
.implements Landroid/media/AudioManagerInternal$RingerModeDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/ZenModeHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RingerModeDelegate"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/notification/ZenModeHelper;


# direct methods
.method private constructor <init>(Lcom/android/server/notification/ZenModeHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/notification/ZenModeHelper;

    .prologue
    .line 1017
    iput-object p1, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/notification/ZenModeHelper;Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/notification/ZenModeHelper;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;-><init>(Lcom/android/server/notification/ZenModeHelper;)V

    return-void
.end method


# virtual methods
.method public canVolumeDownEnterSilent()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1103
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    invoke-static {v1}, Lcom/android/server/notification/ZenModeHelper;->-get3(Lcom/android/server/notification/ZenModeHelper;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public getRingerModeAffectedStreams(I)I
    .locals 2
    .param p1, "streams"    # I

    .prologue
    .line 1109
    or-int/lit8 p1, p1, 0x26

    .line 1114
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    invoke-static {v0}, Lcom/android/server/notification/ZenModeHelper;->-get3(Lcom/android/server/notification/ZenModeHelper;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1115
    or-int/lit8 p1, p1, 0x18

    .line 1121
    :goto_0
    return p1

    .line 1118
    :cond_0
    and-int/lit8 p1, p1, -0x19

    goto :goto_0
.end method

.method public onSetRingerModeExternal(IILjava/lang/String;ILandroid/media/VolumePolicy;)I
    .locals 9
    .param p1, "ringerModeOld"    # I
    .param p2, "ringerModeNew"    # I
    .param p3, "caller"    # Ljava/lang/String;
    .param p4, "ringerModeInternal"    # I
    .param p5, "policy"    # Landroid/media/VolumePolicy;

    .prologue
    const/4 v5, 0x0

    .line 1067
    move v8, p2

    .line 1068
    .local v8, "ringerModeInternalOut":I
    if-eq p1, p2, :cond_2

    const/4 v6, 0x1

    .line 1069
    .local v6, "isChange":Z
    :goto_0
    const/4 v0, 0x1

    if-ne p4, v0, :cond_3

    const/4 v7, 0x1

    .line 1071
    .local v7, "isVibrate":Z
    :goto_1
    const/4 v1, -0x1

    .line 1072
    .local v1, "newZen":I
    packed-switch p2, :pswitch_data_0

    .line 1091
    :cond_0
    :goto_2
    const/4 v0, -0x1

    if-eq v1, v0, :cond_1

    .line 1092
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    const-string/jumbo v3, "ringerModeExternal"

    const/4 v2, 0x0

    move-object v4, p3

    invoke-static/range {v0 .. v5}, Lcom/android/server/notification/ZenModeHelper;->-wrap6(Lcom/android/server/notification/ZenModeHelper;ILandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1096
    :cond_1
    invoke-static {p1, p2, p3, p4, v8}, Lcom/android/server/notification/ZenLog;->traceSetRingerModeExternal(IILjava/lang/String;II)V

    .line 1098
    return v8

    .line 1068
    .end local v1    # "newZen":I
    .end local v6    # "isChange":Z
    .end local v7    # "isVibrate":Z
    :cond_2
    const/4 v6, 0x0

    .restart local v6    # "isChange":Z
    goto :goto_0

    .line 1069
    :cond_3
    const/4 v7, 0x0

    .restart local v7    # "isVibrate":Z
    goto :goto_1

    .line 1074
    .restart local v1    # "newZen":I
    :pswitch_0
    if-eqz v6, :cond_6

    .line 1075
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    invoke-static {v0}, Lcom/android/server/notification/ZenModeHelper;->-get3(Lcom/android/server/notification/ZenModeHelper;)I

    move-result v0

    if-nez v0, :cond_4

    .line 1076
    const/4 v1, 0x3

    .line 1078
    :cond_4
    if-eqz v7, :cond_5

    const/4 v8, 0x1

    goto :goto_2

    .line 1079
    :cond_5
    const/4 v8, 0x0

    goto :goto_2

    .line 1081
    :cond_6
    move v8, p4

    goto :goto_2

    .line 1086
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    invoke-static {v0}, Lcom/android/server/notification/ZenModeHelper;->-get3(Lcom/android/server/notification/ZenModeHelper;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 1087
    const/4 v1, 0x0

    goto :goto_2

    .line 1072
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public onSetRingerModeInternal(IILjava/lang/String;ILandroid/media/VolumePolicy;)I
    .locals 9
    .param p1, "ringerModeOld"    # I
    .param p2, "ringerModeNew"    # I
    .param p3, "caller"    # Ljava/lang/String;
    .param p4, "ringerModeExternal"    # I
    .param p5, "policy"    # Landroid/media/VolumePolicy;

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v8, -0x1

    const/4 v5, 0x0

    .line 1026
    if-eq p1, p2, :cond_4

    const/4 v6, 0x1

    .line 1028
    .local v6, "isChange":Z
    :goto_0
    move v7, p2

    .line 1030
    .local v7, "ringerModeExternalOut":I
    const/4 v1, -0x1

    .line 1031
    .local v1, "newZen":I
    packed-switch p2, :pswitch_data_0

    .line 1052
    :cond_0
    :goto_1
    if-eq v1, v8, :cond_1

    .line 1053
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    const-string/jumbo v3, "ringerModeInternal"

    move-object v4, v2

    invoke-static/range {v0 .. v5}, Lcom/android/server/notification/ZenModeHelper;->-wrap6(Lcom/android/server/notification/ZenModeHelper;ILandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1057
    :cond_1
    if-nez v6, :cond_2

    if-eq v1, v8, :cond_8

    .line 1058
    :cond_2
    :goto_2
    invoke-static {p1, p2, p3, p4, v7}, Lcom/android/server/notification/ZenLog;->traceSetRingerModeInternal(IILjava/lang/String;II)V

    .line 1061
    :cond_3
    return v7

    .line 1026
    .end local v1    # "newZen":I
    .end local v6    # "isChange":Z
    .end local v7    # "ringerModeExternalOut":I
    :cond_4
    const/4 v6, 0x0

    .restart local v6    # "isChange":Z
    goto :goto_0

    .line 1033
    .restart local v1    # "newZen":I
    .restart local v7    # "ringerModeExternalOut":I
    :pswitch_0
    if-eqz v6, :cond_0

    iget-boolean v0, p5, Landroid/media/VolumePolicy;->doNotDisturbWhenSilent:Z

    if-eqz v0, :cond_0

    .line 1034
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    invoke-static {v0}, Lcom/android/server/notification/ZenModeHelper;->-get3(Lcom/android/server/notification/ZenModeHelper;)I

    move-result v0

    if-eq v0, v3, :cond_5

    .line 1035
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    invoke-static {v0}, Lcom/android/server/notification/ZenModeHelper;->-get3(Lcom/android/server/notification/ZenModeHelper;)I

    move-result v0

    if-eq v0, v4, :cond_5

    .line 1036
    const/4 v1, 0x3

    .line 1038
    :cond_5
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/server/notification/ZenModeHelper;->-wrap7(Lcom/android/server/notification/ZenModeHelper;Ljava/lang/Integer;)V

    goto :goto_1

    .line 1043
    :pswitch_1
    if-eqz v6, :cond_7

    if-nez p1, :cond_7

    .line 1044
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    invoke-static {v0}, Lcom/android/server/notification/ZenModeHelper;->-get3(Lcom/android/server/notification/ZenModeHelper;)I

    move-result v0

    if-eq v0, v3, :cond_6

    .line 1045
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    invoke-static {v0}, Lcom/android/server/notification/ZenModeHelper;->-get3(Lcom/android/server/notification/ZenModeHelper;)I

    move-result v0

    if-ne v0, v4, :cond_7

    .line 1046
    :cond_6
    const/4 v1, 0x0

    .line 1045
    goto :goto_1

    .line 1047
    :cond_7
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    invoke-static {v0}, Lcom/android/server/notification/ZenModeHelper;->-get3(Lcom/android/server/notification/ZenModeHelper;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 1048
    const/4 v7, 0x0

    goto :goto_1

    .line 1057
    :cond_8
    if-eq p4, v7, :cond_3

    goto :goto_2

    .line 1031
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1020
    const-string/jumbo v0, "ZenModeHelper"

    return-object v0
.end method
