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

.field static final TRANSACTION_addQsTile:I = 0x20

.field static final TRANSACTION_animateCollapsePanels:I = 0x6

.field static final TRANSACTION_animateExpandNotificationsPanel:I = 0x4

.field static final TRANSACTION_animateExpandSettingsPanel:I = 0x5

.field static final TRANSACTION_appTransitionCancelled:I = 0x18

.field static final TRANSACTION_appTransitionFinished:I = 0x1a

.field static final TRANSACTION_appTransitionPending:I = 0x17

.field static final TRANSACTION_appTransitionStarting:I = 0x19

.field static final TRANSACTION_buzzBeepBlinked:I = 0xb

.field static final TRANSACTION_cancelPreloadRecentApps:I = 0x13

.field static final TRANSACTION_clickQsTile:I = 0x22

.field static final TRANSACTION_disable:I = 0x3

.field static final TRANSACTION_dismissKeyboardShortcutsMenu:I = 0x15

.field static final TRANSACTION_getLockedPackageList:I = 0x23

.field static final TRANSACTION_handleSystemNavigationKey:I = 0x1f

.field static final TRANSACTION_hideRecentApps:I = 0xf

.field static final TRANSACTION_notificationLightOff:I = 0xc

.field static final TRANSACTION_notificationLightPulse:I = 0xd

.field static final TRANSACTION_onCameraLaunchGestureDetected:I = 0x1d

.field static final TRANSACTION_preloadRecentApps:I = 0x12

.field static final TRANSACTION_remQsTile:I = 0x21

.field static final TRANSACTION_removeIcon:I = 0x2

.field static final TRANSACTION_setIcon:I = 0x1

.field static final TRANSACTION_setImeWindowStatus:I = 0x9

.field static final TRANSACTION_setSystemUiVisibility:I = 0x7

.field static final TRANSACTION_setWindowState:I = 0xa

.field static final TRANSACTION_showAssistDisclosure:I = 0x1b

.field static final TRANSACTION_showRecentApps:I = 0xe

.field static final TRANSACTION_showScreenPinningRequest:I = 0x14

.field static final TRANSACTION_showTvPictureInPictureMenu:I = 0x1e

.field static final TRANSACTION_startAssist:I = 0x1c

.field static final TRANSACTION_toggleKeyboardShortcutsMenu:I = 0x16

.field static final TRANSACTION_toggleRecentApps:I = 0x10

.field static final TRANSACTION_toggleSplitScreen:I = 0x11

.field static final TRANSACTION_topAppWindowChanged:I = 0x8


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 17
    const-string/jumbo v0, "com.android.internal.statusbar.IStatusBar"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 15
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBar;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 25
    if-nez p0, :cond_0

    .line 26
    return-object v1

    .line 28
    :cond_0
    const-string/jumbo v1, "com.android.internal.statusbar.IStatusBar"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 29
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v1, :cond_1

    .line 30
    check-cast v0, Lcom/android/internal/statusbar/IStatusBar;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 32
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/statusbar/IStatusBar$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 36
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 24
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
    .line 40
    sparse-switch p1, :sswitch_data_0

    .line 370
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    return v4

    .line 44
    :sswitch_0
    const-string/jumbo v4, "com.android.internal.statusbar.IStatusBar"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 45
    const/4 v4, 0x1

    return v4

    .line 49
    :sswitch_1
    const-string/jumbo v4, "com.android.internal.statusbar.IStatusBar"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 51
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 53
    .local v16, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_0

    .line 54
    sget-object v4, Lcom/android/internal/statusbar/StatusBarIcon;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/internal/statusbar/StatusBarIcon;

    .line 59
    :goto_0
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/statusbar/IStatusBar$Stub;->setIcon(Ljava/lang/String;Lcom/android/internal/statusbar/StatusBarIcon;)V

    .line 60
    const/4 v4, 0x1

    return v4

    .line 57
    :cond_0
    const/16 v20, 0x0

    .local v20, "_arg1":Lcom/android/internal/statusbar/StatusBarIcon;
    goto :goto_0

    .line 64
    .end local v16    # "_arg0":Ljava/lang/String;
    .end local v20    # "_arg1":Lcom/android/internal/statusbar/StatusBarIcon;
    :sswitch_2
    const-string/jumbo v4, "com.android.internal.statusbar.IStatusBar"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 66
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 67
    .restart local v16    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->removeIcon(Ljava/lang/String;)V

    .line 68
    const/4 v4, 0x1

    return v4

    .line 72
    .end local v16    # "_arg0":Ljava/lang/String;
    :sswitch_3
    const-string/jumbo v4, "com.android.internal.statusbar.IStatusBar"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 76
    .local v5, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 77
    .local v6, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/android/internal/statusbar/IStatusBar$Stub;->disable(II)V

    .line 78
    const/4 v4, 0x1

    return v4

    .line 82
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":I
    :sswitch_4
    const-string/jumbo v4, "com.android.internal.statusbar.IStatusBar"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 85
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/statusbar/IStatusBar$Stub;->animateExpandNotificationsPanel(I)V

    .line 86
    const/4 v4, 0x1

    return v4

    .line 90
    .end local v5    # "_arg0":I
    :sswitch_5
    const-string/jumbo v4, "com.android.internal.statusbar.IStatusBar"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 93
    .restart local v16    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->animateExpandSettingsPanel(Ljava/lang/String;)V

    .line 94
    const/4 v4, 0x1

    return v4

    .line 98
    .end local v16    # "_arg0":Ljava/lang/String;
    :sswitch_6
    const-string/jumbo v4, "com.android.internal.statusbar.IStatusBar"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->animateCollapsePanels()V

    .line 100
    const/4 v4, 0x1

    return v4

    .line 104
    :sswitch_7
    const-string/jumbo v4, "com.android.internal.statusbar.IStatusBar"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 106
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 108
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 110
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 112
    .local v7, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 114
    .local v8, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1

    .line 115
    sget-object v4, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/Rect;

    .line 121
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2

    .line 122
    sget-object v4, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/graphics/Rect;

    :goto_2
    move-object/from16 v4, p0

    .line 127
    invoke-virtual/range {v4 .. v10}, Lcom/android/internal/statusbar/IStatusBar$Stub;->setSystemUiVisibility(IIIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 128
    const/4 v4, 0x1

    return v4

    .line 118
    :cond_1
    const/4 v9, 0x0

    .local v9, "_arg4":Landroid/graphics/Rect;
    goto :goto_1

    .line 125
    .end local v9    # "_arg4":Landroid/graphics/Rect;
    :cond_2
    const/4 v10, 0x0

    .local v10, "_arg5":Landroid/graphics/Rect;
    goto :goto_2

    .line 132
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    .end local v8    # "_arg3":I
    .end local v10    # "_arg5":Landroid/graphics/Rect;
    :sswitch_8
    const-string/jumbo v4, "com.android.internal.statusbar.IStatusBar"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 134
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_3

    const/16 v17, 0x1

    .line 135
    .local v17, "_arg0":Z
    :goto_3
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->topAppWindowChanged(Z)V

    .line 136
    const/4 v4, 0x1

    return v4

    .line 134
    .end local v17    # "_arg0":Z
    :cond_3
    const/16 v17, 0x0

    goto :goto_3

    .line 140
    :sswitch_9
    const-string/jumbo v4, "com.android.internal.statusbar.IStatusBar"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 142
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v15

    .line 144
    .local v15, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 146
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 148
    .restart local v7    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_4

    const/16 v22, 0x1

    .line 149
    .local v22, "_arg3":Z
    :goto_4
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v15, v6, v7, v1}, Lcom/android/internal/statusbar/IStatusBar$Stub;->setImeWindowStatus(Landroid/os/IBinder;IIZ)V

    .line 150
    const/4 v4, 0x1

    return v4

    .line 148
    .end local v22    # "_arg3":Z
    :cond_4
    const/16 v22, 0x0

    goto :goto_4

    .line 154
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    .end local v15    # "_arg0":Landroid/os/IBinder;
    :sswitch_a
    const-string/jumbo v4, "com.android.internal.statusbar.IStatusBar"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 156
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 158
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 159
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/android/internal/statusbar/IStatusBar$Stub;->setWindowState(II)V

    .line 160
    const/4 v4, 0x1

    return v4

    .line 164
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":I
    :sswitch_b
    const-string/jumbo v4, "com.android.internal.statusbar.IStatusBar"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 165
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->buzzBeepBlinked()V

    .line 166
    const/4 v4, 0x1

    return v4

    .line 170
    :sswitch_c
    const-string/jumbo v4, "com.android.internal.statusbar.IStatusBar"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 171
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->notificationLightOff()V

    .line 172
    const/4 v4, 0x1

    return v4

    .line 176
    :sswitch_d
    const-string/jumbo v4, "com.android.internal.statusbar.IStatusBar"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 178
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 180
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 182
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 183
    .restart local v7    # "_arg2":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Lcom/android/internal/statusbar/IStatusBar$Stub;->notificationLightPulse(III)V

    .line 184
    const/4 v4, 0x1

    return v4

    .line 188
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    :sswitch_e
    const-string/jumbo v4, "com.android.internal.statusbar.IStatusBar"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 190
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_5

    const/16 v17, 0x1

    .line 192
    .local v17, "_arg0":Z
    :goto_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_6

    const/16 v21, 0x1

    .line 193
    .local v21, "_arg1":Z
    :goto_6
    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/statusbar/IStatusBar$Stub;->showRecentApps(ZZ)V

    .line 194
    const/4 v4, 0x1

    return v4

    .line 190
    .end local v17    # "_arg0":Z
    .end local v21    # "_arg1":Z
    :cond_5
    const/16 v17, 0x0

    .restart local v17    # "_arg0":Z
    goto :goto_5

    .line 192
    :cond_6
    const/16 v21, 0x0

    goto :goto_6

    .line 198
    .end local v17    # "_arg0":Z
    :sswitch_f
    const-string/jumbo v4, "com.android.internal.statusbar.IStatusBar"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 200
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_7

    const/16 v17, 0x1

    .line 202
    .restart local v17    # "_arg0":Z
    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_8

    const/16 v21, 0x1

    .line 203
    .restart local v21    # "_arg1":Z
    :goto_8
    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/statusbar/IStatusBar$Stub;->hideRecentApps(ZZ)V

    .line 204
    const/4 v4, 0x1

    return v4

    .line 200
    .end local v17    # "_arg0":Z
    .end local v21    # "_arg1":Z
    :cond_7
    const/16 v17, 0x0

    .restart local v17    # "_arg0":Z
    goto :goto_7

    .line 202
    :cond_8
    const/16 v21, 0x0

    goto :goto_8

    .line 208
    .end local v17    # "_arg0":Z
    :sswitch_10
    const-string/jumbo v4, "com.android.internal.statusbar.IStatusBar"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 209
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->toggleRecentApps()V

    .line 210
    const/4 v4, 0x1

    return v4

    .line 214
    :sswitch_11
    const-string/jumbo v4, "com.android.internal.statusbar.IStatusBar"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 215
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->toggleSplitScreen()V

    .line 216
    const/4 v4, 0x1

    return v4

    .line 220
    :sswitch_12
    const-string/jumbo v4, "com.android.internal.statusbar.IStatusBar"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 221
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->preloadRecentApps()V

    .line 222
    const/4 v4, 0x1

    return v4

    .line 226
    :sswitch_13
    const-string/jumbo v4, "com.android.internal.statusbar.IStatusBar"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 227
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->cancelPreloadRecentApps()V

    .line 228
    const/4 v4, 0x1

    return v4

    .line 232
    :sswitch_14
    const-string/jumbo v4, "com.android.internal.statusbar.IStatusBar"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 234
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 235
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/statusbar/IStatusBar$Stub;->showScreenPinningRequest(I)V

    .line 236
    const/4 v4, 0x1

    return v4

    .line 240
    .end local v5    # "_arg0":I
    :sswitch_15
    const-string/jumbo v4, "com.android.internal.statusbar.IStatusBar"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 241
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->dismissKeyboardShortcutsMenu()V

    .line 242
    const/4 v4, 0x1

    return v4

    .line 246
    :sswitch_16
    const-string/jumbo v4, "com.android.internal.statusbar.IStatusBar"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 248
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 249
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/statusbar/IStatusBar$Stub;->toggleKeyboardShortcutsMenu(I)V

    .line 250
    const/4 v4, 0x1

    return v4

    .line 254
    .end local v5    # "_arg0":I
    :sswitch_17
    const-string/jumbo v4, "com.android.internal.statusbar.IStatusBar"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 255
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->appTransitionPending()V

    .line 256
    const/4 v4, 0x1

    return v4

    .line 260
    :sswitch_18
    const-string/jumbo v4, "com.android.internal.statusbar.IStatusBar"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 261
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->appTransitionCancelled()V

    .line 262
    const/4 v4, 0x1

    return v4

    .line 266
    :sswitch_19
    const-string/jumbo v4, "com.android.internal.statusbar.IStatusBar"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 268
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v12

    .line 270
    .local v12, "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v18

    .line 271
    .local v18, "_arg1":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-virtual {v0, v12, v13, v1, v2}, Lcom/android/internal/statusbar/IStatusBar$Stub;->appTransitionStarting(JJ)V

    .line 272
    const/4 v4, 0x1

    return v4

    .line 276
    .end local v12    # "_arg0":J
    .end local v18    # "_arg1":J
    :sswitch_1a
    const-string/jumbo v4, "com.android.internal.statusbar.IStatusBar"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 277
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->appTransitionFinished()V

    .line 278
    const/4 v4, 0x1

    return v4

    .line 282
    :sswitch_1b
    const-string/jumbo v4, "com.android.internal.statusbar.IStatusBar"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 283
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->showAssistDisclosure()V

    .line 284
    const/4 v4, 0x1

    return v4

    .line 288
    :sswitch_1c
    const-string/jumbo v4, "com.android.internal.statusbar.IStatusBar"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 290
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_9

    .line 291
    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/os/Bundle;

    .line 296
    :goto_9
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/internal/statusbar/IStatusBar$Stub;->startAssist(Landroid/os/Bundle;)V

    .line 297
    const/4 v4, 0x1

    return v4

    .line 294
    :cond_9
    const/4 v14, 0x0

    .local v14, "_arg0":Landroid/os/Bundle;
    goto :goto_9

    .line 301
    .end local v14    # "_arg0":Landroid/os/Bundle;
    :sswitch_1d
    const-string/jumbo v4, "com.android.internal.statusbar.IStatusBar"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 303
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 304
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/statusbar/IStatusBar$Stub;->onCameraLaunchGestureDetected(I)V

    .line 305
    const/4 v4, 0x1

    return v4

    .line 309
    .end local v5    # "_arg0":I
    :sswitch_1e
    const-string/jumbo v4, "com.android.internal.statusbar.IStatusBar"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 310
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->showTvPictureInPictureMenu()V

    .line 311
    const/4 v4, 0x1

    return v4

    .line 315
    :sswitch_1f
    const-string/jumbo v4, "com.android.internal.statusbar.IStatusBar"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 317
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 318
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/statusbar/IStatusBar$Stub;->handleSystemNavigationKey(I)V

    .line 319
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 320
    const/4 v4, 0x1

    return v4

    .line 324
    .end local v5    # "_arg0":I
    :sswitch_20
    const-string/jumbo v4, "com.android.internal.statusbar.IStatusBar"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 326
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_a

    .line 327
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/ComponentName;

    .line 332
    :goto_a
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/internal/statusbar/IStatusBar$Stub;->addQsTile(Landroid/content/ComponentName;)V

    .line 333
    const/4 v4, 0x1

    return v4

    .line 330
    :cond_a
    const/4 v11, 0x0

    .local v11, "_arg0":Landroid/content/ComponentName;
    goto :goto_a

    .line 337
    .end local v11    # "_arg0":Landroid/content/ComponentName;
    :sswitch_21
    const-string/jumbo v4, "com.android.internal.statusbar.IStatusBar"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 339
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_b

    .line 340
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/ComponentName;

    .line 345
    :goto_b
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/internal/statusbar/IStatusBar$Stub;->remQsTile(Landroid/content/ComponentName;)V

    .line 346
    const/4 v4, 0x1

    return v4

    .line 343
    :cond_b
    const/4 v11, 0x0

    .restart local v11    # "_arg0":Landroid/content/ComponentName;
    goto :goto_b

    .line 350
    .end local v11    # "_arg0":Landroid/content/ComponentName;
    :sswitch_22
    const-string/jumbo v4, "com.android.internal.statusbar.IStatusBar"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 352
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_c

    .line 353
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/ComponentName;

    .line 358
    :goto_c
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/internal/statusbar/IStatusBar$Stub;->clickQsTile(Landroid/content/ComponentName;)V

    .line 359
    const/4 v4, 0x1

    return v4

    .line 356
    :cond_c
    const/4 v11, 0x0

    .restart local v11    # "_arg0":Landroid/content/ComponentName;
    goto :goto_c

    .line 363
    .end local v11    # "_arg0":Landroid/content/ComponentName;
    :sswitch_23
    const-string/jumbo v4, "com.android.internal.statusbar.IStatusBar"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 364
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/statusbar/IStatusBar$Stub;->getLockedPackageList()Ljava/util/List;

    move-result-object v23

    .line 365
    .local v23, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 366
    move-object/from16 v0, p3

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 367
    const/4 v4, 0x1

    return v4

    .line 40
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
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_1e
        0x1f -> :sswitch_1f
        0x20 -> :sswitch_20
        0x21 -> :sswitch_21
        0x22 -> :sswitch_22
        0x23 -> :sswitch_23
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
