.class public abstract Landroid/app/ApplicationThreadNative;
.super Landroid/os/Binder;
.source "ApplicationThreadNative.java"

# interfaces
.implements Landroid/app/IApplicationThread;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 70
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 71
    const-string v0, "android.app.IApplicationThread"

    invoke-virtual {p0, p0, v0}, Landroid/app/ApplicationThreadNative;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 72
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 58
    if-nez p0, :cond_1

    .line 59
    const/4 v0, 0x0

    .line 67
    :cond_0
    :goto_0
    return-object v0

    .line 61
    :cond_1
    const-string v1, "android.app.IApplicationThread"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/app/IApplicationThread;

    .line 63
    .local v0, "in":Landroid/app/IApplicationThread;
    if-nez v0, :cond_0

    .line 67
    new-instance v0, Landroid/app/ApplicationThreadProxy;

    .end local v0    # "in":Landroid/app/IApplicationThread;
    invoke-direct {v0, p0}, Landroid/app/ApplicationThreadProxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 722
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 118
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
    .line 77
    packed-switch p1, :pswitch_data_0

    .line 717
    :pswitch_0
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    :goto_0
    return v5

    .line 80
    :pswitch_1
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 81
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 82
    .local v6, "b":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_0

    const/4 v7, 0x1

    .line 83
    .local v7, "finished":Z
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1

    const/4 v8, 0x1

    .line 84
    .local v8, "userLeaving":Z
    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 85
    .local v9, "configChanges":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_2

    const/4 v10, 0x1

    .local v10, "dontReport":Z
    :goto_3
    move-object/from16 v5, p0

    .line 86
    invoke-virtual/range {v5 .. v10}, Landroid/app/ApplicationThreadNative;->schedulePauseActivity(Landroid/os/IBinder;ZZIZ)V

    .line 87
    const/4 v5, 0x1

    goto :goto_0

    .line 82
    .end local v7    # "finished":Z
    .end local v8    # "userLeaving":Z
    .end local v9    # "configChanges":I
    .end local v10    # "dontReport":Z
    :cond_0
    const/4 v7, 0x0

    goto :goto_1

    .line 83
    .restart local v7    # "finished":Z
    :cond_1
    const/4 v8, 0x0

    goto :goto_2

    .line 85
    .restart local v8    # "userLeaving":Z
    .restart local v9    # "configChanges":I
    :cond_2
    const/4 v10, 0x0

    goto :goto_3

    .line 92
    .end local v6    # "b":Landroid/os/IBinder;
    .end local v7    # "finished":Z
    .end local v8    # "userLeaving":Z
    .end local v9    # "configChanges":I
    :pswitch_2
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 93
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 94
    .restart local v6    # "b":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_3

    const/16 v114, 0x1

    .line 95
    .local v114, "show":Z
    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 96
    .restart local v9    # "configChanges":I
    move-object/from16 v0, p0

    move/from16 v1, v114

    invoke-virtual {v0, v6, v1, v9}, Landroid/app/ApplicationThreadNative;->scheduleStopActivity(Landroid/os/IBinder;ZI)V

    .line 97
    const/4 v5, 0x1

    goto :goto_0

    .line 94
    .end local v9    # "configChanges":I
    .end local v114    # "show":Z
    :cond_3
    const/16 v114, 0x0

    goto :goto_4

    .line 102
    .end local v6    # "b":Landroid/os/IBinder;
    :pswitch_3
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 103
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 104
    .restart local v6    # "b":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_4

    const/16 v114, 0x1

    .line 105
    .restart local v114    # "show":Z
    :goto_5
    move-object/from16 v0, p0

    move/from16 v1, v114

    invoke-virtual {v0, v6, v1}, Landroid/app/ApplicationThreadNative;->scheduleWindowVisibility(Landroid/os/IBinder;Z)V

    .line 106
    const/4 v5, 0x1

    goto :goto_0

    .line 104
    .end local v114    # "show":Z
    :cond_4
    const/16 v114, 0x0

    goto :goto_5

    .line 111
    .end local v6    # "b":Landroid/os/IBinder;
    :pswitch_4
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 112
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 113
    .restart local v6    # "b":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_5

    const/16 v115, 0x1

    .line 114
    .local v115, "sleeping":Z
    :goto_6
    move-object/from16 v0, p0

    move/from16 v1, v115

    invoke-virtual {v0, v6, v1}, Landroid/app/ApplicationThreadNative;->scheduleSleeping(Landroid/os/IBinder;Z)V

    .line 115
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 113
    .end local v115    # "sleeping":Z
    :cond_5
    const/16 v115, 0x0

    goto :goto_6

    .line 120
    .end local v6    # "b":Landroid/os/IBinder;
    :pswitch_5
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 121
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 122
    .restart local v6    # "b":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    .line 123
    .local v21, "procState":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_6

    const/16 v27, 0x1

    .line 124
    .local v27, "isForward":Z
    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v111

    .line 125
    .local v111, "resumeArgs":Landroid/os/Bundle;
    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v27

    move-object/from16 v3, v111

    invoke-virtual {v0, v6, v1, v2, v3}, Landroid/app/ApplicationThreadNative;->scheduleResumeActivity(Landroid/os/IBinder;IZLandroid/os/Bundle;)V

    .line 126
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 123
    .end local v27    # "isForward":Z
    .end local v111    # "resumeArgs":Landroid/os/Bundle;
    :cond_6
    const/16 v27, 0x0

    goto :goto_7

    .line 131
    .end local v6    # "b":Landroid/os/IBinder;
    .end local v21    # "procState":I
    :pswitch_6
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 132
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 133
    .restart local v6    # "b":Landroid/os/IBinder;
    sget-object v5, Landroid/app/ResultInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v24

    .line 134
    .local v24, "ri":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v6, v1}, Landroid/app/ApplicationThreadNative;->scheduleSendResult(Landroid/os/IBinder;Ljava/util/List;)V

    .line 135
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 140
    .end local v6    # "b":Landroid/os/IBinder;
    .end local v24    # "ri":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    :pswitch_7
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 141
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/Intent;

    .line 142
    .local v12, "intent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 143
    .restart local v6    # "b":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 144
    .local v14, "ident":I
    sget-object v5, Landroid/content/pm/ActivityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/pm/ActivityInfo;

    .line 145
    .local v15, "info":Landroid/content/pm/ActivityInfo;
    sget-object v5, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/content/res/Configuration;

    .line 146
    .local v16, "curConfig":Landroid/content/res/Configuration;
    const/16 v17, 0x0

    .line 147
    .local v17, "overrideConfig":Landroid/content/res/Configuration;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_7

    .line 148
    sget-object v5, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    .end local v17    # "overrideConfig":Landroid/content/res/Configuration;
    check-cast v17, Landroid/content/res/Configuration;

    .line 150
    .restart local v17    # "overrideConfig":Landroid/content/res/Configuration;
    :cond_7
    sget-object v5, Landroid/content/res/CompatibilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/content/res/CompatibilityInfo;

    .line 151
    .local v18, "compatInfo":Landroid/content/res/CompatibilityInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 152
    .local v19, "referrer":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/app/IVoiceInteractor$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IVoiceInteractor;

    move-result-object v20

    .line 154
    .local v20, "voiceInteractor":Lcom/android/internal/app/IVoiceInteractor;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    .line 155
    .restart local v21    # "procState":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v22

    .line 156
    .local v22, "state":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readPersistableBundle()Landroid/os/PersistableBundle;

    move-result-object v23

    .line 157
    .local v23, "persistentState":Landroid/os/PersistableBundle;
    sget-object v5, Landroid/app/ResultInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v24

    .line 158
    .restart local v24    # "ri":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    sget-object v5, Lcom/android/internal/content/ReferrerIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v25

    .line 159
    .local v25, "pi":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/ReferrerIntent;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_8

    const/16 v26, 0x1

    .line 160
    .local v26, "notResumed":Z
    :goto_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_9

    const/16 v27, 0x1

    .line 161
    .restart local v27    # "isForward":Z
    :goto_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_a

    sget-object v5, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ProfilerInfo;

    move-object/from16 v28, v5

    .local v28, "profilerInfo":Landroid/app/ProfilerInfo;
    :goto_a
    move-object/from16 v11, p0

    move-object v13, v6

    .line 163
    invoke-virtual/range {v11 .. v28}, Landroid/app/ApplicationThreadNative;->scheduleLaunchActivity(Landroid/content/Intent;Landroid/os/IBinder;ILandroid/content/pm/ActivityInfo;Landroid/content/res/Configuration;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/lang/String;Lcom/android/internal/app/IVoiceInteractor;ILandroid/os/Bundle;Landroid/os/PersistableBundle;Ljava/util/List;Ljava/util/List;ZZLandroid/app/ProfilerInfo;)V

    .line 166
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 159
    .end local v26    # "notResumed":Z
    .end local v27    # "isForward":Z
    .end local v28    # "profilerInfo":Landroid/app/ProfilerInfo;
    :cond_8
    const/16 v26, 0x0

    goto :goto_8

    .line 160
    .restart local v26    # "notResumed":Z
    :cond_9
    const/16 v27, 0x0

    goto :goto_9

    .line 161
    .restart local v27    # "isForward":Z
    :cond_a
    const/16 v28, 0x0

    goto :goto_a

    .line 171
    .end local v6    # "b":Landroid/os/IBinder;
    .end local v12    # "intent":Landroid/content/Intent;
    .end local v14    # "ident":I
    .end local v15    # "info":Landroid/content/pm/ActivityInfo;
    .end local v16    # "curConfig":Landroid/content/res/Configuration;
    .end local v17    # "overrideConfig":Landroid/content/res/Configuration;
    .end local v18    # "compatInfo":Landroid/content/res/CompatibilityInfo;
    .end local v19    # "referrer":Ljava/lang/String;
    .end local v20    # "voiceInteractor":Lcom/android/internal/app/IVoiceInteractor;
    .end local v21    # "procState":I
    .end local v22    # "state":Landroid/os/Bundle;
    .end local v23    # "persistentState":Landroid/os/PersistableBundle;
    .end local v24    # "ri":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    .end local v25    # "pi":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/ReferrerIntent;>;"
    .end local v26    # "notResumed":Z
    .end local v27    # "isForward":Z
    :pswitch_8
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 172
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 173
    .restart local v6    # "b":Landroid/os/IBinder;
    sget-object v5, Landroid/app/ResultInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v24

    .line 174
    .restart local v24    # "ri":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    sget-object v5, Lcom/android/internal/content/ReferrerIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v25

    .line 175
    .restart local v25    # "pi":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/ReferrerIntent;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 176
    .restart local v9    # "configChanges":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_c

    const/16 v26, 0x1

    .line 177
    .restart local v26    # "notResumed":Z
    :goto_b
    sget-object v5, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Landroid/content/res/Configuration;

    .line 178
    .local v35, "config":Landroid/content/res/Configuration;
    const/16 v17, 0x0

    .line 179
    .restart local v17    # "overrideConfig":Landroid/content/res/Configuration;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_b

    .line 180
    sget-object v5, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    .end local v17    # "overrideConfig":Landroid/content/res/Configuration;
    check-cast v17, Landroid/content/res/Configuration;

    .restart local v17    # "overrideConfig":Landroid/content/res/Configuration;
    :cond_b
    move-object/from16 v29, p0

    move-object/from16 v30, v6

    move-object/from16 v31, v24

    move-object/from16 v32, v25

    move/from16 v33, v9

    move/from16 v34, v26

    move-object/from16 v36, v17

    .line 182
    invoke-virtual/range {v29 .. v36}, Landroid/app/ApplicationThreadNative;->scheduleRelaunchActivity(Landroid/os/IBinder;Ljava/util/List;Ljava/util/List;IZLandroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    .line 183
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 176
    .end local v17    # "overrideConfig":Landroid/content/res/Configuration;
    .end local v26    # "notResumed":Z
    .end local v35    # "config":Landroid/content/res/Configuration;
    :cond_c
    const/16 v26, 0x0

    goto :goto_b

    .line 188
    .end local v6    # "b":Landroid/os/IBinder;
    .end local v9    # "configChanges":I
    .end local v24    # "ri":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    .end local v25    # "pi":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/ReferrerIntent;>;"
    :pswitch_9
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 189
    sget-object v5, Lcom/android/internal/content/ReferrerIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v25

    .line 190
    .restart local v25    # "pi":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/ReferrerIntent;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 191
    .restart local v6    # "b":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v6}, Landroid/app/ApplicationThreadNative;->scheduleNewIntent(Ljava/util/List;Landroid/os/IBinder;)V

    .line 192
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 197
    .end local v6    # "b":Landroid/os/IBinder;
    .end local v25    # "pi":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/ReferrerIntent;>;"
    :pswitch_a
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 198
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 199
    .restart local v6    # "b":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_d

    const/16 v90, 0x1

    .line 200
    .local v90, "finishing":Z
    :goto_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 201
    .restart local v9    # "configChanges":I
    move-object/from16 v0, p0

    move/from16 v1, v90

    invoke-virtual {v0, v6, v1, v9}, Landroid/app/ApplicationThreadNative;->scheduleDestroyActivity(Landroid/os/IBinder;ZI)V

    .line 202
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 199
    .end local v9    # "configChanges":I
    .end local v90    # "finishing":Z
    :cond_d
    const/16 v90, 0x0

    goto :goto_c

    .line 207
    .end local v6    # "b":Landroid/os/IBinder;
    :pswitch_b
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 208
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/Intent;

    .line 209
    .restart local v12    # "intent":Landroid/content/Intent;
    sget-object v5, Landroid/content/pm/ActivityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/pm/ActivityInfo;

    .line 210
    .restart local v15    # "info":Landroid/content/pm/ActivityInfo;
    sget-object v5, Landroid/content/res/CompatibilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/content/res/CompatibilityInfo;

    .line 211
    .restart local v18    # "compatInfo":Landroid/content/res/CompatibilityInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v40

    .line 212
    .local v40, "resultCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v41

    .line 213
    .local v41, "resultData":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v42

    .line 214
    .local v42, "resultExtras":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_e

    const/16 v43, 0x1

    .line 215
    .local v43, "sync":Z
    :goto_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v44

    .line 216
    .local v44, "sendingUser":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v45

    .line 222
    .local v45, "processState":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v46

    .local v46, "hasCode":I
    move-object/from16 v36, p0

    move-object/from16 v37, v12

    move-object/from16 v38, v15

    move-object/from16 v39, v18

    .line 223
    invoke-virtual/range {v36 .. v46}, Landroid/app/ApplicationThreadNative;->scheduleReceiver(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Landroid/content/res/CompatibilityInfo;ILjava/lang/String;Landroid/os/Bundle;ZIII)V

    .line 226
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 214
    .end local v43    # "sync":Z
    .end local v44    # "sendingUser":I
    .end local v45    # "processState":I
    .end local v46    # "hasCode":I
    :cond_e
    const/16 v43, 0x0

    goto :goto_d

    .line 230
    .end local v12    # "intent":Landroid/content/Intent;
    .end local v15    # "info":Landroid/content/pm/ActivityInfo;
    .end local v18    # "compatInfo":Landroid/content/res/CompatibilityInfo;
    .end local v40    # "resultCode":I
    .end local v41    # "resultData":Ljava/lang/String;
    .end local v42    # "resultExtras":Landroid/os/Bundle;
    :pswitch_c
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 231
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v30

    .line 232
    .local v30, "token":Landroid/os/IBinder;
    sget-object v5, Landroid/content/pm/ServiceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/pm/ServiceInfo;

    .line 233
    .local v15, "info":Landroid/content/pm/ServiceInfo;
    sget-object v5, Landroid/content/res/CompatibilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/content/res/CompatibilityInfo;

    .line 234
    .restart local v18    # "compatInfo":Landroid/content/res/CompatibilityInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v45

    .line 235
    .restart local v45    # "processState":I
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v18

    move/from16 v3, v45

    invoke-virtual {v0, v1, v15, v2, v3}, Landroid/app/ApplicationThreadNative;->scheduleCreateService(Landroid/os/IBinder;Landroid/content/pm/ServiceInfo;Landroid/content/res/CompatibilityInfo;I)V

    .line 236
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 240
    .end local v15    # "info":Landroid/content/pm/ServiceInfo;
    .end local v18    # "compatInfo":Landroid/content/res/CompatibilityInfo;
    .end local v30    # "token":Landroid/os/IBinder;
    .end local v45    # "processState":I
    :pswitch_d
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 241
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v30

    .line 242
    .restart local v30    # "token":Landroid/os/IBinder;
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/Intent;

    .line 243
    .restart local v12    # "intent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_f

    const/16 v108, 0x1

    .line 244
    .local v108, "rebind":Z
    :goto_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v45

    .line 245
    .restart local v45    # "processState":I
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move/from16 v2, v108

    move/from16 v3, v45

    invoke-virtual {v0, v1, v12, v2, v3}, Landroid/app/ApplicationThreadNative;->scheduleBindService(Landroid/os/IBinder;Landroid/content/Intent;ZI)V

    .line 246
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 243
    .end local v45    # "processState":I
    .end local v108    # "rebind":Z
    :cond_f
    const/16 v108, 0x0

    goto :goto_e

    .line 250
    .end local v12    # "intent":Landroid/content/Intent;
    .end local v30    # "token":Landroid/os/IBinder;
    :pswitch_e
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 251
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v30

    .line 252
    .restart local v30    # "token":Landroid/os/IBinder;
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/Intent;

    .line 253
    .restart local v12    # "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1, v12}, Landroid/app/ApplicationThreadNative;->scheduleUnbindService(Landroid/os/IBinder;Landroid/content/Intent;)V

    .line 254
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 259
    .end local v12    # "intent":Landroid/content/Intent;
    .end local v30    # "token":Landroid/os/IBinder;
    :pswitch_f
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 260
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v30

    .line 261
    .restart local v30    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_10

    const/16 v31, 0x1

    .line 262
    .local v31, "taskRemoved":Z
    :goto_f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v32

    .line 263
    .local v32, "startId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v33

    .line 265
    .local v33, "fl":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_11

    .line 266
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Landroid/content/Intent;

    .local v34, "args":Landroid/content/Intent;
    :goto_10
    move-object/from16 v29, p0

    .line 270
    invoke-virtual/range {v29 .. v34}, Landroid/app/ApplicationThreadNative;->scheduleServiceArgs(Landroid/os/IBinder;ZIILandroid/content/Intent;)V

    .line 271
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 261
    .end local v31    # "taskRemoved":Z
    .end local v32    # "startId":I
    .end local v33    # "fl":I
    .end local v34    # "args":Landroid/content/Intent;
    :cond_10
    const/16 v31, 0x0

    goto :goto_f

    .line 268
    .restart local v31    # "taskRemoved":Z
    .restart local v32    # "startId":I
    .restart local v33    # "fl":I
    :cond_11
    const/16 v34, 0x0

    .restart local v34    # "args":Landroid/content/Intent;
    goto :goto_10

    .line 276
    .end local v30    # "token":Landroid/os/IBinder;
    .end local v31    # "taskRemoved":Z
    .end local v32    # "startId":I
    .end local v33    # "fl":I
    .end local v34    # "args":Landroid/content/Intent;
    :pswitch_10
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 277
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v30

    .line 278
    .restart local v30    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/app/ApplicationThreadNative;->scheduleStopService(Landroid/os/IBinder;)V

    .line 279
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 284
    .end local v30    # "token":Landroid/os/IBinder;
    :pswitch_11
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 285
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v48

    .line 286
    .local v48, "packageName":Ljava/lang/String;
    sget-object v5, Landroid/content/pm/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/pm/ApplicationInfo;

    .line 288
    .local v15, "info":Landroid/content/pm/ApplicationInfo;
    sget-object v5, Landroid/content/pm/ProviderInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v50

    .line 290
    .local v50, "providers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ProviderInfo;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_12

    new-instance v51, Landroid/content/ComponentName;

    move-object/from16 v0, v51

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/content/ComponentName;-><init>(Landroid/os/Parcel;)V

    .line 292
    .local v51, "testName":Landroid/content/ComponentName;
    :goto_11
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_13

    sget-object v5, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ProfilerInfo;

    move-object/from16 v28, v5

    .line 294
    .restart local v28    # "profilerInfo":Landroid/app/ProfilerInfo;
    :goto_12
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v53

    .line 295
    .local v53, "testArgs":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v84

    .line 296
    .local v84, "binder":Landroid/os/IBinder;
    invoke-static/range {v84 .. v84}, Landroid/app/IInstrumentationWatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IInstrumentationWatcher;

    move-result-object v54

    .line 297
    .local v54, "testWatcher":Landroid/app/IInstrumentationWatcher;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v84

    .line 298
    invoke-static/range {v84 .. v84}, Landroid/app/IUiAutomationConnection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IUiAutomationConnection;

    move-result-object v55

    .line 300
    .local v55, "uiAutomationConnection":Landroid/app/IUiAutomationConnection;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v56

    .line 301
    .local v56, "testMode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_14

    const/16 v57, 0x1

    .line 302
    .local v57, "openGlTrace":Z
    :goto_13
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_15

    const/16 v58, 0x1

    .line 303
    .local v58, "restrictedBackupMode":Z
    :goto_14
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_16

    const/16 v59, 0x1

    .line 304
    .local v59, "persistent":Z
    :goto_15
    sget-object v5, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Landroid/content/res/Configuration;

    .line 305
    .restart local v35    # "config":Landroid/content/res/Configuration;
    sget-object v5, Landroid/content/res/CompatibilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/content/res/CompatibilityInfo;

    .line 306
    .restart local v18    # "compatInfo":Landroid/content/res/CompatibilityInfo;
    const/4 v5, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v62

    .line 307
    .local v62, "services":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/os/IBinder;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v63

    .local v63, "coreSettings":Landroid/os/Bundle;
    move-object/from16 v47, p0

    move-object/from16 v49, v15

    move-object/from16 v52, v28

    move-object/from16 v60, v35

    move-object/from16 v61, v18

    .line 308
    invoke-virtual/range {v47 .. v63}, Landroid/app/ApplicationThreadNative;->bindApplication(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/util/List;Landroid/content/ComponentName;Landroid/app/ProfilerInfo;Landroid/os/Bundle;Landroid/app/IInstrumentationWatcher;Landroid/app/IUiAutomationConnection;IZZZLandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/util/Map;Landroid/os/Bundle;)V

    .line 311
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 290
    .end local v18    # "compatInfo":Landroid/content/res/CompatibilityInfo;
    .end local v28    # "profilerInfo":Landroid/app/ProfilerInfo;
    .end local v35    # "config":Landroid/content/res/Configuration;
    .end local v51    # "testName":Landroid/content/ComponentName;
    .end local v53    # "testArgs":Landroid/os/Bundle;
    .end local v54    # "testWatcher":Landroid/app/IInstrumentationWatcher;
    .end local v55    # "uiAutomationConnection":Landroid/app/IUiAutomationConnection;
    .end local v56    # "testMode":I
    .end local v57    # "openGlTrace":Z
    .end local v58    # "restrictedBackupMode":Z
    .end local v59    # "persistent":Z
    .end local v62    # "services":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/os/IBinder;>;"
    .end local v63    # "coreSettings":Landroid/os/Bundle;
    .end local v84    # "binder":Landroid/os/IBinder;
    :cond_12
    const/16 v51, 0x0

    goto :goto_11

    .line 292
    .restart local v51    # "testName":Landroid/content/ComponentName;
    :cond_13
    const/16 v28, 0x0

    goto :goto_12

    .line 301
    .restart local v28    # "profilerInfo":Landroid/app/ProfilerInfo;
    .restart local v53    # "testArgs":Landroid/os/Bundle;
    .restart local v54    # "testWatcher":Landroid/app/IInstrumentationWatcher;
    .restart local v55    # "uiAutomationConnection":Landroid/app/IUiAutomationConnection;
    .restart local v56    # "testMode":I
    .restart local v84    # "binder":Landroid/os/IBinder;
    :cond_14
    const/16 v57, 0x0

    goto :goto_13

    .line 302
    .restart local v57    # "openGlTrace":Z
    :cond_15
    const/16 v58, 0x0

    goto :goto_14

    .line 303
    .restart local v58    # "restrictedBackupMode":Z
    :cond_16
    const/16 v59, 0x0

    goto :goto_15

    .line 316
    .end local v15    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v28    # "profilerInfo":Landroid/app/ProfilerInfo;
    .end local v48    # "packageName":Ljava/lang/String;
    .end local v50    # "providers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ProviderInfo;>;"
    .end local v51    # "testName":Landroid/content/ComponentName;
    .end local v53    # "testArgs":Landroid/os/Bundle;
    .end local v54    # "testWatcher":Landroid/app/IInstrumentationWatcher;
    .end local v55    # "uiAutomationConnection":Landroid/app/IUiAutomationConnection;
    .end local v56    # "testMode":I
    .end local v57    # "openGlTrace":Z
    .end local v58    # "restrictedBackupMode":Z
    .end local v84    # "binder":Landroid/os/IBinder;
    :pswitch_12
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 317
    invoke-virtual/range {p0 .. p0}, Landroid/app/ApplicationThreadNative;->scheduleExit()V

    .line 318
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 323
    :pswitch_13
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 324
    invoke-virtual/range {p0 .. p0}, Landroid/app/ApplicationThreadNative;->scheduleSuicide()V

    .line 325
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 330
    :pswitch_14
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 331
    sget-object v5, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Landroid/content/res/Configuration;

    .line 332
    .restart local v35    # "config":Landroid/content/res/Configuration;
    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/app/ApplicationThreadNative;->scheduleConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 333
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 337
    .end local v35    # "config":Landroid/content/res/Configuration;
    :pswitch_15
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 338
    invoke-virtual/range {p0 .. p0}, Landroid/app/ApplicationThreadNative;->updateTimeZone()V

    .line 339
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 343
    :pswitch_16
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 344
    invoke-virtual/range {p0 .. p0}, Landroid/app/ApplicationThreadNative;->clearDnsCache()V

    .line 345
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 349
    :pswitch_17
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 350
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v107

    .line 351
    .local v107, "proxy":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v103

    .line 352
    .local v103, "port":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v88

    .line 353
    .local v88, "exclList":Ljava/lang/String;
    sget-object v5, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v99

    check-cast v99, Landroid/net/Uri;

    .line 354
    .local v99, "pacFileUrl":Landroid/net/Uri;
    move-object/from16 v0, p0

    move-object/from16 v1, v107

    move-object/from16 v2, v103

    move-object/from16 v3, v88

    move-object/from16 v4, v99

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ApplicationThreadNative;->setHttpProxy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    .line 355
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 359
    .end local v88    # "exclList":Ljava/lang/String;
    .end local v99    # "pacFileUrl":Landroid/net/Uri;
    .end local v103    # "port":Ljava/lang/String;
    .end local v107    # "proxy":Ljava/lang/String;
    :pswitch_18
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 360
    invoke-virtual/range {p0 .. p0}, Landroid/app/ApplicationThreadNative;->processInBackground()V

    .line 361
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 365
    :pswitch_19
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 366
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v89

    .line 367
    .local v89, "fd":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v112

    .line 368
    .local v112, "service":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v34

    .line 369
    .local v34, "args":[Ljava/lang/String;
    if-eqz v89, :cond_17

    .line 370
    invoke-virtual/range {v89 .. v89}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v112

    move-object/from16 v2, v34

    invoke-virtual {v0, v5, v1, v2}, Landroid/app/ApplicationThreadNative;->dumpService(Ljava/io/FileDescriptor;Landroid/os/IBinder;[Ljava/lang/String;)V

    .line 372
    :try_start_0
    invoke-virtual/range {v89 .. v89}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 376
    :cond_17
    :goto_16
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 380
    .end local v34    # "args":[Ljava/lang/String;
    .end local v89    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v112    # "service":Landroid/os/IBinder;
    :pswitch_1a
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 381
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v89

    .line 382
    .restart local v89    # "fd":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v112

    .line 383
    .restart local v112    # "service":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v34

    .line 384
    .restart local v34    # "args":[Ljava/lang/String;
    if-eqz v89, :cond_18

    .line 385
    invoke-virtual/range {v89 .. v89}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v112

    move-object/from16 v2, v34

    invoke-virtual {v0, v5, v1, v2}, Landroid/app/ApplicationThreadNative;->dumpProvider(Ljava/io/FileDescriptor;Landroid/os/IBinder;[Ljava/lang/String;)V

    .line 387
    :try_start_1
    invoke-virtual/range {v89 .. v89}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 391
    :cond_18
    :goto_17
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 395
    .end local v34    # "args":[Ljava/lang/String;
    .end local v89    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v112    # "service":Landroid/os/IBinder;
    :pswitch_1b
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 396
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/content/IIntentReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentReceiver;

    move-result-object v65

    .line 398
    .local v65, "receiver":Landroid/content/IIntentReceiver;
    sget-object v5, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/Intent;

    .line 399
    .restart local v12    # "intent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v40

    .line 400
    .restart local v40    # "resultCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v68

    .line 401
    .local v68, "dataStr":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v69

    .line 402
    .local v69, "extras":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_19

    const/16 v70, 0x1

    .line 403
    .local v70, "ordered":Z
    :goto_18
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1a

    const/16 v71, 0x1

    .line 404
    .local v71, "sticky":Z
    :goto_19
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v44

    .line 405
    .restart local v44    # "sendingUser":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v45

    .restart local v45    # "processState":I
    move-object/from16 v64, p0

    move-object/from16 v66, v12

    move/from16 v67, v40

    move/from16 v72, v44

    move/from16 v73, v45

    .line 406
    invoke-virtual/range {v64 .. v73}, Landroid/app/ApplicationThreadNative;->scheduleRegisteredReceiver(Landroid/content/IIntentReceiver;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZII)V

    .line 408
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 402
    .end local v44    # "sendingUser":I
    .end local v45    # "processState":I
    .end local v70    # "ordered":Z
    .end local v71    # "sticky":Z
    :cond_19
    const/16 v70, 0x0

    goto :goto_18

    .line 403
    .restart local v70    # "ordered":Z
    :cond_1a
    const/16 v71, 0x0

    goto :goto_19

    .line 413
    .end local v12    # "intent":Landroid/content/Intent;
    .end local v40    # "resultCode":I
    .end local v65    # "receiver":Landroid/content/IIntentReceiver;
    .end local v68    # "dataStr":Ljava/lang/String;
    .end local v69    # "extras":Landroid/os/Bundle;
    .end local v70    # "ordered":Z
    :pswitch_1c
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 414
    invoke-virtual/range {p0 .. p0}, Landroid/app/ApplicationThreadNative;->scheduleLowMemory()V

    .line 415
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 420
    :pswitch_1d
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 421
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 422
    .restart local v6    # "b":Landroid/os/IBinder;
    const/16 v17, 0x0

    .line 423
    .restart local v17    # "overrideConfig":Landroid/content/res/Configuration;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1b

    .line 424
    sget-object v5, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    .end local v17    # "overrideConfig":Landroid/content/res/Configuration;
    check-cast v17, Landroid/content/res/Configuration;

    .line 426
    .restart local v17    # "overrideConfig":Landroid/content/res/Configuration;
    :cond_1b
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v6, v1}, Landroid/app/ApplicationThreadNative;->scheduleActivityConfigurationChanged(Landroid/os/IBinder;Landroid/content/res/Configuration;)V

    .line 427
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 432
    .end local v6    # "b":Landroid/os/IBinder;
    .end local v17    # "overrideConfig":Landroid/content/res/Configuration;
    :pswitch_1e
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 433
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1c

    const/16 v116, 0x1

    .line 434
    .local v116, "start":Z
    :goto_1a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v105

    .line 435
    .local v105, "profileType":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1d

    sget-object v5, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ProfilerInfo;

    move-object/from16 v28, v5

    .line 437
    .restart local v28    # "profilerInfo":Landroid/app/ProfilerInfo;
    :goto_1b
    move-object/from16 v0, p0

    move/from16 v1, v116

    move-object/from16 v2, v28

    move/from16 v3, v105

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ApplicationThreadNative;->profilerControl(ZLandroid/app/ProfilerInfo;I)V

    .line 438
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 433
    .end local v28    # "profilerInfo":Landroid/app/ProfilerInfo;
    .end local v105    # "profileType":I
    .end local v116    # "start":Z
    :cond_1c
    const/16 v116, 0x0

    goto :goto_1a

    .line 435
    .restart local v105    # "profileType":I
    .restart local v116    # "start":Z
    :cond_1d
    const/16 v28, 0x0

    goto :goto_1b

    .line 443
    .end local v105    # "profileType":I
    .end local v116    # "start":Z
    :pswitch_1f
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 444
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v92

    .line 445
    .local v92, "group":I
    move-object/from16 v0, p0

    move/from16 v1, v92

    invoke-virtual {v0, v1}, Landroid/app/ApplicationThreadNative;->setSchedulingGroup(I)V

    .line 446
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 451
    .end local v92    # "group":I
    :pswitch_20
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 452
    sget-object v5, Landroid/content/pm/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v82

    check-cast v82, Landroid/content/pm/ApplicationInfo;

    .line 453
    .local v82, "appInfo":Landroid/content/pm/ApplicationInfo;
    sget-object v5, Landroid/content/res/CompatibilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/content/res/CompatibilityInfo;

    .line 454
    .restart local v18    # "compatInfo":Landroid/content/res/CompatibilityInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v83

    .line 455
    .local v83, "backupMode":I
    move-object/from16 v0, p0

    move-object/from16 v1, v82

    move-object/from16 v2, v18

    move/from16 v3, v83

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ApplicationThreadNative;->scheduleCreateBackupAgent(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;I)V

    .line 456
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 461
    .end local v18    # "compatInfo":Landroid/content/res/CompatibilityInfo;
    .end local v82    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v83    # "backupMode":I
    :pswitch_21
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 462
    sget-object v5, Landroid/content/pm/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v82

    check-cast v82, Landroid/content/pm/ApplicationInfo;

    .line 463
    .restart local v82    # "appInfo":Landroid/content/pm/ApplicationInfo;
    sget-object v5, Landroid/content/res/CompatibilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/content/res/CompatibilityInfo;

    .line 464
    .restart local v18    # "compatInfo":Landroid/content/res/CompatibilityInfo;
    move-object/from16 v0, p0

    move-object/from16 v1, v82

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/app/ApplicationThreadNative;->scheduleDestroyBackupAgent(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;)V

    .line 465
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 470
    .end local v18    # "compatInfo":Landroid/content/res/CompatibilityInfo;
    .end local v82    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :pswitch_22
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 471
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v85

    .line 472
    .local v85, "cmd":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v100

    .line 473
    .local v100, "packages":[Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, v85

    move-object/from16 v2, v100

    invoke-virtual {v0, v1, v2}, Landroid/app/ApplicationThreadNative;->dispatchPackageBroadcast(I[Ljava/lang/String;)V

    .line 474
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 479
    .end local v85    # "cmd":I
    .end local v100    # "packages":[Ljava/lang/String;
    :pswitch_23
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 480
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v96

    .line 481
    .local v96, "msg":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v96

    invoke-virtual {v0, v1}, Landroid/app/ApplicationThreadNative;->scheduleCrash(Ljava/lang/String;)V

    .line 482
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 487
    .end local v96    # "msg":Ljava/lang/String;
    :pswitch_24
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 488
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1e

    const/16 v95, 0x1

    .line 489
    .local v95, "managed":Z
    :goto_1c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v101

    .line 490
    .local v101, "path":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1f

    sget-object v5, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/ParcelFileDescriptor;

    move-object/from16 v89, v5

    .line 492
    .restart local v89    # "fd":Landroid/os/ParcelFileDescriptor;
    :goto_1d
    move-object/from16 v0, p0

    move/from16 v1, v95

    move-object/from16 v2, v101

    move-object/from16 v3, v89

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ApplicationThreadNative;->dumpHeap(ZLjava/lang/String;Landroid/os/ParcelFileDescriptor;)V

    .line 493
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 488
    .end local v89    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v95    # "managed":Z
    .end local v101    # "path":Ljava/lang/String;
    :cond_1e
    const/16 v95, 0x0

    goto :goto_1c

    .line 490
    .restart local v95    # "managed":Z
    .restart local v101    # "path":Ljava/lang/String;
    :cond_1f
    const/16 v89, 0x0

    goto :goto_1d

    .line 497
    .end local v95    # "managed":Z
    .end local v101    # "path":Ljava/lang/String;
    :pswitch_25
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 498
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v89

    .line 499
    .restart local v89    # "fd":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v80

    .line 500
    .local v80, "activity":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v104

    .line 501
    .local v104, "prefix":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v34

    .line 502
    .restart local v34    # "args":[Ljava/lang/String;
    if-eqz v89, :cond_20

    .line 503
    invoke-virtual/range {v89 .. v89}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v80

    move-object/from16 v2, v104

    move-object/from16 v3, v34

    invoke-virtual {v0, v5, v1, v2, v3}, Landroid/app/ApplicationThreadNative;->dumpActivity(Ljava/io/FileDescriptor;Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;)V

    .line 505
    :try_start_2
    invoke-virtual/range {v89 .. v89}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 509
    :cond_20
    :goto_1e
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 513
    .end local v34    # "args":[Ljava/lang/String;
    .end local v80    # "activity":Landroid/os/IBinder;
    .end local v89    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v104    # "prefix":Ljava/lang/String;
    :pswitch_26
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 514
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v113

    .line 515
    .local v113, "settings":Landroid/os/Bundle;
    move-object/from16 v0, p0

    move-object/from16 v1, v113

    invoke-virtual {v0, v1}, Landroid/app/ApplicationThreadNative;->setCoreSettings(Landroid/os/Bundle;)V

    .line 516
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 520
    .end local v113    # "settings":Landroid/os/Bundle;
    :pswitch_27
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 521
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v102

    .line 522
    .local v102, "pkg":Ljava/lang/String;
    sget-object v5, Landroid/content/res/CompatibilityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v86

    check-cast v86, Landroid/content/res/CompatibilityInfo;

    .line 523
    .local v86, "compat":Landroid/content/res/CompatibilityInfo;
    move-object/from16 v0, p0

    move-object/from16 v1, v102

    move-object/from16 v2, v86

    invoke-virtual {v0, v1, v2}, Landroid/app/ApplicationThreadNative;->updatePackageCompatibilityInfo(Ljava/lang/String;Landroid/content/res/CompatibilityInfo;)V

    .line 524
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 528
    .end local v86    # "compat":Landroid/content/res/CompatibilityInfo;
    .end local v102    # "pkg":Ljava/lang/String;
    :pswitch_28
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 529
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v94

    .line 530
    .local v94, "level":I
    move-object/from16 v0, p0

    move/from16 v1, v94

    invoke-virtual {v0, v1}, Landroid/app/ApplicationThreadNative;->scheduleTrimMemory(I)V

    .line 531
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 536
    .end local v94    # "level":I
    :pswitch_29
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 537
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v89

    .line 538
    .restart local v89    # "fd":Landroid/os/ParcelFileDescriptor;
    sget-object v5, Landroid/os/Debug$MemoryInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v74

    check-cast v74, Landroid/os/Debug$MemoryInfo;

    .line 539
    .local v74, "mi":Landroid/os/Debug$MemoryInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_22

    const/16 v75, 0x1

    .line 540
    .local v75, "checkin":Z
    :goto_1f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_23

    const/16 v76, 0x1

    .line 541
    .local v76, "dumpInfo":Z
    :goto_20
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_24

    const/16 v77, 0x1

    .line 542
    .local v77, "dumpDalvik":Z
    :goto_21
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_25

    const/16 v78, 0x1

    .line 543
    .local v78, "dumpSummaryOnly":Z
    :goto_22
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v34

    .line 544
    .restart local v34    # "args":[Ljava/lang/String;
    if-eqz v89, :cond_21

    .line 546
    :try_start_3
    invoke-virtual/range {v89 .. v89}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v73

    move-object/from16 v72, p0

    move-object/from16 v79, v34

    invoke-virtual/range {v72 .. v79}, Landroid/app/ApplicationThreadNative;->dumpMemInfo(Ljava/io/FileDescriptor;Landroid/os/Debug$MemoryInfo;ZZZZ[Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 550
    :try_start_4
    invoke-virtual/range {v89 .. v89}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 556
    :cond_21
    :goto_23
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 557
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 539
    .end local v34    # "args":[Ljava/lang/String;
    .end local v75    # "checkin":Z
    .end local v76    # "dumpInfo":Z
    .end local v77    # "dumpDalvik":Z
    .end local v78    # "dumpSummaryOnly":Z
    :cond_22
    const/16 v75, 0x0

    goto :goto_1f

    .line 540
    .restart local v75    # "checkin":Z
    :cond_23
    const/16 v76, 0x0

    goto :goto_20

    .line 541
    .restart local v76    # "dumpInfo":Z
    :cond_24
    const/16 v77, 0x0

    goto :goto_21

    .line 542
    .restart local v77    # "dumpDalvik":Z
    :cond_25
    const/16 v78, 0x0

    goto :goto_22

    .line 549
    .restart local v34    # "args":[Ljava/lang/String;
    .restart local v78    # "dumpSummaryOnly":Z
    :catchall_0
    move-exception v5

    .line 550
    :try_start_5
    invoke-virtual/range {v89 .. v89}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 553
    :goto_24
    throw v5

    .line 562
    .end local v34    # "args":[Ljava/lang/String;
    .end local v74    # "mi":Landroid/os/Debug$MemoryInfo;
    .end local v75    # "checkin":Z
    .end local v76    # "dumpInfo":Z
    .end local v77    # "dumpDalvik":Z
    .end local v78    # "dumpSummaryOnly":Z
    .end local v89    # "fd":Landroid/os/ParcelFileDescriptor;
    :pswitch_2a
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 563
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v89

    .line 564
    .restart local v89    # "fd":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v34

    .line 565
    .restart local v34    # "args":[Ljava/lang/String;
    if-eqz v89, :cond_26

    .line 567
    :try_start_6
    invoke-virtual/range {v89 .. v89}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v5, v1}, Landroid/app/ApplicationThreadNative;->dumpGfxInfo(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 570
    :try_start_7
    invoke-virtual/range {v89 .. v89}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 576
    :cond_26
    :goto_25
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 577
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 569
    :catchall_1
    move-exception v5

    .line 570
    :try_start_8
    invoke-virtual/range {v89 .. v89}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    .line 573
    :goto_26
    throw v5

    .line 582
    .end local v34    # "args":[Ljava/lang/String;
    .end local v89    # "fd":Landroid/os/ParcelFileDescriptor;
    :pswitch_2b
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 583
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v89

    .line 584
    .restart local v89    # "fd":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v34

    .line 585
    .restart local v34    # "args":[Ljava/lang/String;
    if-eqz v89, :cond_27

    .line 587
    :try_start_9
    invoke-virtual/range {v89 .. v89}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v5, v1}, Landroid/app/ApplicationThreadNative;->dumpDbInfo(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 590
    :try_start_a
    invoke-virtual/range {v89 .. v89}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    .line 596
    :cond_27
    :goto_27
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 597
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 589
    :catchall_2
    move-exception v5

    .line 590
    :try_start_b
    invoke-virtual/range {v89 .. v89}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_8

    .line 593
    :goto_28
    throw v5

    .line 602
    .end local v34    # "args":[Ljava/lang/String;
    .end local v89    # "fd":Landroid/os/ParcelFileDescriptor;
    :pswitch_2c
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 603
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v106

    .line 604
    .local v106, "provider":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Landroid/app/ApplicationThreadNative;->unstableProviderDied(Landroid/os/IBinder;)V

    .line 605
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 606
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 611
    .end local v106    # "provider":Landroid/os/IBinder;
    :pswitch_2d
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 612
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v81

    .line 613
    .local v81, "activityToken":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v109

    .line 614
    .local v109, "requestToken":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v110

    .line 615
    .local v110, "requestType":I
    move-object/from16 v0, p0

    move-object/from16 v1, v81

    move-object/from16 v2, v109

    move/from16 v3, v110

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ApplicationThreadNative;->requestAssistContextExtras(Landroid/os/IBinder;Landroid/os/IBinder;I)V

    .line 616
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 617
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 622
    .end local v81    # "activityToken":Landroid/os/IBinder;
    .end local v109    # "requestToken":Landroid/os/IBinder;
    .end local v110    # "requestType":I
    :pswitch_2e
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 623
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v30

    .line 624
    .restart local v30    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    const/4 v11, 0x1

    if-ne v5, v11, :cond_28

    const/16 v117, 0x1

    .line 625
    .local v117, "timeout":Z
    :goto_29
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move/from16 v2, v117

    invoke-virtual {v0, v1, v2}, Landroid/app/ApplicationThreadNative;->scheduleTranslucentConversionComplete(Landroid/os/IBinder;Z)V

    .line 626
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 627
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 624
    .end local v117    # "timeout":Z
    :cond_28
    const/16 v117, 0x0

    goto :goto_29

    .line 632
    .end local v30    # "token":Landroid/os/IBinder;
    :pswitch_2f
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 633
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v30

    .line 634
    .restart local v30    # "token":Landroid/os/IBinder;
    new-instance v98, Landroid/app/ActivityOptions;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v5

    move-object/from16 v0, v98

    invoke-direct {v0, v5}, Landroid/app/ActivityOptions;-><init>(Landroid/os/Bundle;)V

    .line 635
    .local v98, "options":Landroid/app/ActivityOptions;
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v98

    invoke-virtual {v0, v1, v2}, Landroid/app/ApplicationThreadNative;->scheduleOnNewActivityOptions(Landroid/os/IBinder;Landroid/app/ActivityOptions;)V

    .line 636
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 637
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 642
    .end local v30    # "token":Landroid/os/IBinder;
    .end local v98    # "options":Landroid/app/ActivityOptions;
    :pswitch_30
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 643
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    .line 644
    .local v22, "state":I
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/app/ApplicationThreadNative;->setProcessState(I)V

    .line 645
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 646
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 651
    .end local v22    # "state":I
    :pswitch_31
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 652
    sget-object v5, Landroid/content/pm/ProviderInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v106

    check-cast v106, Landroid/content/pm/ProviderInfo;

    .line 653
    .local v106, "provider":Landroid/content/pm/ProviderInfo;
    move-object/from16 v0, p0

    move-object/from16 v1, v106

    invoke-virtual {v0, v1}, Landroid/app/ApplicationThreadNative;->scheduleInstallProvider(Landroid/content/pm/ProviderInfo;)V

    .line 654
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 655
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 660
    .end local v106    # "provider":Landroid/content/pm/ProviderInfo;
    :pswitch_32
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 661
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readByte()B

    move-result v93

    .line 662
    .local v93, "is24Hour":B
    const/4 v5, 0x1

    move/from16 v0, v93

    if-ne v0, v5, :cond_29

    const/4 v5, 0x1

    :goto_2a
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/ApplicationThreadNative;->updateTimePrefs(Z)V

    .line 663
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 664
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 662
    :cond_29
    const/4 v5, 0x0

    goto :goto_2a

    .line 669
    .end local v93    # "is24Hour":B
    :pswitch_33
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 670
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v30

    .line 671
    .restart local v30    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/app/ApplicationThreadNative;->scheduleCancelVisibleBehind(Landroid/os/IBinder;)V

    .line 672
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 673
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 678
    .end local v30    # "token":Landroid/os/IBinder;
    :pswitch_34
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 679
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v30

    .line 680
    .restart local v30    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-lez v5, :cond_2a

    const/16 v87, 0x1

    .line 681
    .local v87, "enabled":Z
    :goto_2b
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move/from16 v2, v87

    invoke-virtual {v0, v1, v2}, Landroid/app/ApplicationThreadNative;->scheduleBackgroundVisibleBehindChanged(Landroid/os/IBinder;Z)V

    .line 682
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 683
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 680
    .end local v87    # "enabled":Z
    :cond_2a
    const/16 v87, 0x0

    goto :goto_2b

    .line 688
    .end local v30    # "token":Landroid/os/IBinder;
    :pswitch_35
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 689
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v30

    .line 690
    .restart local v30    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/app/ApplicationThreadNative;->scheduleEnterAnimationComplete(Landroid/os/IBinder;)V

    .line 691
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 692
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 697
    .end local v30    # "token":Landroid/os/IBinder;
    :pswitch_36
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 698
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v91

    .line 699
    .local v91, "firstPacket":[B
    move-object/from16 v0, p0

    move-object/from16 v1, v91

    invoke-virtual {v0, v1}, Landroid/app/ApplicationThreadNative;->notifyCleartextNetwork([B)V

    .line 700
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 701
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 708
    .end local v91    # "firstPacket":[B
    :pswitch_37
    const-string v5, "android.app.IApplicationThread"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 709
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_2b

    const/16 v97, 0x1

    .line 710
    .local v97, "on":Z
    :goto_2c
    move-object/from16 v0, p0

    move/from16 v1, v97

    invoke-virtual {v0, v1}, Landroid/app/ApplicationThreadNative;->switchActivityThreadLog(Z)V

    .line 711
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 709
    .end local v97    # "on":Z
    :cond_2b
    const/16 v97, 0x0

    goto :goto_2c

    .line 373
    .restart local v34    # "args":[Ljava/lang/String;
    .restart local v89    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local v112    # "service":Landroid/os/IBinder;
    :catch_0
    move-exception v5

    goto/16 :goto_16

    .line 388
    :catch_1
    move-exception v5

    goto/16 :goto_17

    .line 506
    .end local v112    # "service":Landroid/os/IBinder;
    .restart local v80    # "activity":Landroid/os/IBinder;
    .restart local v104    # "prefix":Ljava/lang/String;
    :catch_2
    move-exception v5

    goto/16 :goto_1e

    .line 551
    .end local v80    # "activity":Landroid/os/IBinder;
    .end local v104    # "prefix":Ljava/lang/String;
    .restart local v74    # "mi":Landroid/os/Debug$MemoryInfo;
    .restart local v75    # "checkin":Z
    .restart local v76    # "dumpInfo":Z
    .restart local v77    # "dumpDalvik":Z
    .restart local v78    # "dumpSummaryOnly":Z
    :catch_3
    move-exception v5

    goto/16 :goto_23

    :catch_4
    move-exception v11

    goto/16 :goto_24

    .line 571
    .end local v74    # "mi":Landroid/os/Debug$MemoryInfo;
    .end local v75    # "checkin":Z
    .end local v76    # "dumpInfo":Z
    .end local v77    # "dumpDalvik":Z
    .end local v78    # "dumpSummaryOnly":Z
    :catch_5
    move-exception v5

    goto/16 :goto_25

    :catch_6
    move-exception v11

    goto/16 :goto_26

    .line 591
    :catch_7
    move-exception v5

    goto/16 :goto_27

    :catch_8
    move-exception v11

    goto/16 :goto_28

    .line 77
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_0
        :pswitch_14
        :pswitch_f
        :pswitch_15
        :pswitch_18
        :pswitch_d
        :pswitch_e
        :pswitch_19
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_8
        :pswitch_4
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_2f
        :pswitch_13
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_16
        :pswitch_17
        :pswitch_26
        :pswitch_27
        :pswitch_28
        :pswitch_29
        :pswitch_2a
        :pswitch_1a
        :pswitch_2b
        :pswitch_2c
        :pswitch_2d
        :pswitch_2e
        :pswitch_30
        :pswitch_31
        :pswitch_32
        :pswitch_33
        :pswitch_34
        :pswitch_35
        :pswitch_36
        :pswitch_37
    .end packed-switch
.end method
