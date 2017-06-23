.class public abstract Lcom/android/internal/statusbar/IStatusBar$Stub;
.super Landroid/os/Binder;
.source "IStatusBar.java"

# interfaces
.implements Lcom/android/internal/statusbar/IStatusBar;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/statusbar/IStatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.statusbar.IStatusBar"

.field static final TRANSACTION_animateCollapsePanels:I = 0x6

.field static final TRANSACTION_animateExpandNotificationsPanel:I = 0x4

.field static final TRANSACTION_animateExpandSettingsPanel:I = 0x5

.field static final TRANSACTION_appTransitionCancelled:I = 0x15

.field static final TRANSACTION_appTransitionPending:I = 0x14

.field static final TRANSACTION_appTransitionStarting:I = 0x16

.field static final TRANSACTION_buzzBeepBlinked:I = 0xb

.field static final TRANSACTION_cancelPreloadRecentApps:I = 0x12

.field static final TRANSACTION_disable:I = 0x3

.field static final TRANSACTION_hideRecentApps:I = 0xf

.field static final TRANSACTION_notificationLightOff:I = 0xc

.field static final TRANSACTION_notificationLightPulse:I = 0xd

.field static final TRANSACTION_onCameraLaunchGestureDetected:I = 0x19

.field static final TRANSACTION_preloadRecentApps:I = 0x11

.field static final TRANSACTION_removeIcon:I = 0x2

.field static final TRANSACTION_setIcon:I = 0x1

.field static final TRANSACTION_setImeWindowStatus:I = 0x9

.field static final TRANSACTION_setSystemUiVisibility:I = 0x7

.field static final TRANSACTION_setWindowState:I = 0xa

.field static final TRANSACTION_showAssistDisclosure:I = 0x17

.field static final TRANSACTION_showRecentApps:I = 0xe

.field static final TRANSACTION_showScreenPinningRequest:I = 0x13

.field static final TRANSACTION_startAssist:I = 0x18

.field static final TRANSACTION_toggleRecentApps:I = 0x10

.field static final TRANSACTION_topAppWindowChanged:I = 0x8


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string v0, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBar;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 24
    if-nez p0, :cond_0

    .line 25
    const/4 v0, 0x0

    .line 31
    :goto_0
    return-object v0

    .line 27
    :cond_0
    const-string v1, "com.android.internal.statusbar.IStatusBar"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v1, :cond_1

    .line 29
    check-cast v0, Lcom/android/internal/statusbar/IStatusBar;

    goto :goto_0

    .line 31
    :cond_1
    new-instance v0, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 35
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 9
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 39
    sparse-switch p1, :sswitch_data_0

    .line 255
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    :goto_0
    return v6

    .line 43
    :sswitch_0
    const-string v7, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 48
    :sswitch_1
    const-string v7, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 52
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_0

    .line 53
    sget-object v7, Lcom/android/internal/statusbar/StatusBarIcon;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/statusbar/StatusBarIcon;

    .line 58
    .local v2, "_arg1":Lcom/android/internal/statusbar/StatusBarIcon;
    :goto_1
    invoke-virtual {p0, v0, v2}, Lcom/android/internal/statusbar/IStatusBar$Stub;->setIcon(ILcom/android/internal/statusbar/StatusBarIcon;)V

    goto :goto_0

    .line 56
    .end local v2    # "_arg1":Lcom/android/internal/statusbar/StatusBarIcon;
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_arg1":Lcom/android/internal/statusbar/StatusBarIcon;
    goto :goto_1

    .line 63
    .end local v0    # "_arg0":I
    .end local v2    # "_arg1":Lcom/android/internal/statusbar/StatusBarIcon;
    :sswitch_2
    const-string v7, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 66
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->removeIcon(I)V

    goto :goto_0

    .line 71
    .end local v0    # "_arg0":I
    :sswitch_3
    const-string v7, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 75
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 76
    .local v2, "_arg1":I
    invoke-virtual {p0, v0, v2}, Lcom/android/internal/statusbar/IStatusBar$Stub;->disable(II)V

    goto :goto_0

    .line 81
    .end local v0    # "_arg0":I
    .end local v2    # "_arg1":I
    :sswitch_4
    const-string v7, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->animateExpandNotificationsPanel()V

    goto :goto_0

    .line 87
    :sswitch_5
    const-string v7, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->animateExpandSettingsPanel()V

    goto :goto_0

    .line 93
    :sswitch_6
    const-string v7, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->animateCollapsePanels()V

    goto :goto_0

    .line 99
    :sswitch_7
    const-string v7, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 103
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 104
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v0, v2}, Lcom/android/internal/statusbar/IStatusBar$Stub;->setSystemUiVisibility(II)V

    goto :goto_0

    .line 109
    .end local v0    # "_arg0":I
    .end local v2    # "_arg1":I
    :sswitch_8
    const-string v8, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 111
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_1

    move v0, v6

    .line 112
    .local v0, "_arg0":Z
    :goto_2
    invoke-virtual {p0, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->topAppWindowChanged(Z)V

    goto :goto_0

    .end local v0    # "_arg0":Z
    :cond_1
    move v0, v7

    .line 111
    goto :goto_2

    .line 117
    :sswitch_9
    const-string v8, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 119
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 121
    .local v0, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 123
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 125
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_2

    move v5, v6

    .line 126
    .local v5, "_arg3":Z
    :goto_3
    invoke-virtual {p0, v0, v2, v4, v5}, Lcom/android/internal/statusbar/IStatusBar$Stub;->setImeWindowStatus(Landroid/os/IBinder;IIZ)V

    goto/16 :goto_0

    .end local v5    # "_arg3":Z
    :cond_2
    move v5, v7

    .line 125
    goto :goto_3

    .line 131
    .end local v0    # "_arg0":Landroid/os/IBinder;
    .end local v2    # "_arg1":I
    .end local v4    # "_arg2":I
    :sswitch_a
    const-string v7, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 133
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 135
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 136
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v0, v2}, Lcom/android/internal/statusbar/IStatusBar$Stub;->setWindowState(II)V

    goto/16 :goto_0

    .line 141
    .end local v0    # "_arg0":I
    .end local v2    # "_arg1":I
    :sswitch_b
    const-string v7, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 142
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->buzzBeepBlinked()V

    goto/16 :goto_0

    .line 147
    :sswitch_c
    const-string v7, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 148
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->notificationLightOff()V

    goto/16 :goto_0

    .line 153
    :sswitch_d
    const-string v7, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 155
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 157
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 159
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 160
    .restart local v4    # "_arg2":I
    invoke-virtual {p0, v0, v2, v4}, Lcom/android/internal/statusbar/IStatusBar$Stub;->notificationLightPulse(III)V

    goto/16 :goto_0

    .line 165
    .end local v0    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v4    # "_arg2":I
    :sswitch_e
    const-string v8, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 167
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_3

    move v0, v6

    .line 168
    .local v0, "_arg0":Z
    :goto_4
    invoke-virtual {p0, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->showRecentApps(Z)V

    goto/16 :goto_0

    .end local v0    # "_arg0":Z
    :cond_3
    move v0, v7

    .line 167
    goto :goto_4

    .line 173
    :sswitch_f
    const-string v8, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 175
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_4

    move v0, v6

    .line 177
    .restart local v0    # "_arg0":Z
    :goto_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_5

    move v2, v6

    .line 178
    .local v2, "_arg1":Z
    :goto_6
    invoke-virtual {p0, v0, v2}, Lcom/android/internal/statusbar/IStatusBar$Stub;->hideRecentApps(ZZ)V

    goto/16 :goto_0

    .end local v0    # "_arg0":Z
    .end local v2    # "_arg1":Z
    :cond_4
    move v0, v7

    .line 175
    goto :goto_5

    .restart local v0    # "_arg0":Z
    :cond_5
    move v2, v7

    .line 177
    goto :goto_6

    .line 183
    .end local v0    # "_arg0":Z
    :sswitch_10
    const-string v7, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 184
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->toggleRecentApps()V

    goto/16 :goto_0

    .line 189
    :sswitch_11
    const-string v7, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 190
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->preloadRecentApps()V

    goto/16 :goto_0

    .line 195
    :sswitch_12
    const-string v7, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 196
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->cancelPreloadRecentApps()V

    goto/16 :goto_0

    .line 201
    :sswitch_13
    const-string v7, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 202
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->showScreenPinningRequest()V

    goto/16 :goto_0

    .line 207
    :sswitch_14
    const-string v7, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 208
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->appTransitionPending()V

    goto/16 :goto_0

    .line 213
    :sswitch_15
    const-string v7, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 214
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->appTransitionCancelled()V

    goto/16 :goto_0

    .line 219
    :sswitch_16
    const-string v7, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 221
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 223
    .local v0, "_arg0":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 224
    .local v2, "_arg1":J
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/statusbar/IStatusBar$Stub;->appTransitionStarting(JJ)V

    goto/16 :goto_0

    .line 229
    .end local v0    # "_arg0":J
    .end local v2    # "_arg1":J
    :sswitch_17
    const-string v7, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 230
    invoke-virtual {p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->showAssistDisclosure()V

    goto/16 :goto_0

    .line 235
    :sswitch_18
    const-string v7, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 237
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_6

    .line 238
    sget-object v7, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 243
    .local v0, "_arg0":Landroid/os/Bundle;
    :goto_7
    invoke-virtual {p0, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->startAssist(Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 241
    .end local v0    # "_arg0":Landroid/os/Bundle;
    :cond_6
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/os/Bundle;
    goto :goto_7

    .line 248
    .end local v0    # "_arg0":Landroid/os/Bundle;
    :sswitch_19
    const-string v7, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 250
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 251
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->onCameraLaunchGestureDetected(I)V

    goto/16 :goto_0

    .line 39
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
