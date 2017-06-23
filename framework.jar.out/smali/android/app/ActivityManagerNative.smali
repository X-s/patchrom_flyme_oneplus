.class public abstract Landroid/app/ActivityManagerNative;
.super Landroid/os/Binder;
.source "ActivityManagerNative.java"

# interfaces
.implements Landroid/app/IActivityManager;


# static fields
.field private static final gDefault:Landroid/util/Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Singleton",
            "<",
            "Landroid/app/IActivityManager;",
            ">;"
        }
    .end annotation
.end field

.field static sSystemReady:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 100
    const/4 v0, 0x0

    sput-boolean v0, Landroid/app/ActivityManagerNative;->sSystemReady:Z

    .line 2753
    new-instance v0, Landroid/app/ActivityManagerNative$1;

    invoke-direct {v0}, Landroid/app/ActivityManagerNative$1;-><init>()V

    sput-object v0, Landroid/app/ActivityManagerNative;->gDefault:Landroid/util/Singleton;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 142
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 143
    const-string v0, "android.app.IActivityManager"

    invoke-virtual {p0, p0, v0}, Landroid/app/ActivityManagerNative;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 144
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/IActivityManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 72
    if-nez p0, :cond_1

    .line 73
    const/4 v0, 0x0

    .line 81
    :cond_0
    :goto_0
    return-object v0

    .line 75
    :cond_1
    const-string v1, "android.app.IActivityManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/app/IActivityManager;

    .line 77
    .local v0, "in":Landroid/app/IActivityManager;
    if-nez v0, :cond_0

    .line 81
    new-instance v0, Landroid/app/ActivityManagerProxy;

    .end local v0    # "in":Landroid/app/IActivityManager;
    invoke-direct {v0, p0}, Landroid/app/ActivityManagerProxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method

.method public static broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;I)V
    .locals 1
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 103
    const/4 v0, -0x1

    invoke-static {p0, p1, v0, p2}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;II)V

    .line 104
    return-void
.end method

.method public static broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;II)V
    .locals 14
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "appOp"    # I
    .param p3, "userId"    # I

    .prologue
    .line 113
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    move-object v2, p0

    move/from16 v9, p2

    move/from16 v13, p3

    invoke-interface/range {v0 .. v13}, Landroid/app/IActivityManager;->broadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZI)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    :goto_0
    return-void

    .line 116
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static getDefault()Landroid/app/IActivityManager;
    .locals 1

    .prologue
    .line 88
    sget-object v0, Landroid/app/ActivityManagerNative;->gDefault:Landroid/util/Singleton;

    invoke-virtual {v0}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/IActivityManager;

    return-object v0
.end method

.method public static isSystemReady()Z
    .locals 1

    .prologue
    .line 95
    sget-boolean v0, Landroid/app/ActivityManagerNative;->sSystemReady:Z

    if-nez v0, :cond_0

    .line 96
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->testIsSystemReady()Z

    move-result v0

    sput-boolean v0, Landroid/app/ActivityManagerNative;->sSystemReady:Z

    .line 98
    :cond_0
    sget-boolean v0, Landroid/app/ActivityManagerNative;->sSystemReady:Z

    return v0
.end method

.method public static noteAlarmFinish(Landroid/app/PendingIntent;ILjava/lang/String;)V
    .locals 2
    .param p0, "ps"    # Landroid/app/PendingIntent;
    .param p1, "sourceUid"    # I
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    .line 137
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/PendingIntent;->getTarget()Landroid/content/IIntentSender;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Landroid/app/IActivityManager;->noteAlarmFinish(Landroid/content/IIntentSender;ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    :goto_0
    return-void

    .line 138
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static noteAlarmStart(Landroid/app/PendingIntent;ILjava/lang/String;)V
    .locals 2
    .param p0, "ps"    # Landroid/app/PendingIntent;
    .param p1, "sourceUid"    # I
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    .line 130
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/PendingIntent;->getTarget()Landroid/content/IIntentSender;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Landroid/app/IActivityManager;->noteAlarmStart(Landroid/content/IIntentSender;ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    :goto_0
    return-void

    .line 131
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static noteWakeupAlarm(Landroid/app/PendingIntent;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "ps"    # Landroid/app/PendingIntent;
    .param p1, "sourceUid"    # I
    .param p2, "sourcePkg"    # Ljava/lang/String;
    .param p3, "tag"    # Ljava/lang/String;

    .prologue
    .line 123
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/PendingIntent;->getTarget()Landroid/content/IIntentSender;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2, p3}, Landroid/app/IActivityManager;->noteWakeupAlarm(Landroid/content/IIntentSender;ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    :goto_0
    return-void

    .line 124
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 2750
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 298
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
    .line 149
    move/from16 v0, p1

    packed-switch v0, :pswitch_data_0

    .line 2746
    :pswitch_0
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    :goto_0
    return v6

    .line 152
    :pswitch_1
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 153
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v181

    .line 154
    .local v181, "b":Landroid/os/IBinder;
    invoke-static/range {v181 .. v181}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 155
    .local v7, "app":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 156
    .local v8, "callingPackage":Ljava/lang/String;
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/Intent;

    .line 157
    .local v9, "intent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 158
    .local v10, "resolvedType":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v11

    .line 159
    .local v11, "resultTo":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 160
    .local v12, "resultWho":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 161
    .local v13, "requestCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 162
    .local v14, "startFlags":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_0

    sget-object v6, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ProfilerInfo;

    move-object v15, v6

    .line 164
    .local v15, "profilerInfo":Landroid/app/ProfilerInfo;
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_1

    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Bundle;

    move-object/from16 v16, v6

    .local v16, "options":Landroid/os/Bundle;
    :goto_2
    move-object/from16 v6, p0

    .line 166
    invoke-virtual/range {v6 .. v16}, Landroid/app/ActivityManagerNative;->startActivity(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;)I

    move-result v0

    move/16 v267, v0

    .line 168
    .local v267, "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 169
    move-object/from16 v0, p3

    move/from16 v1, v267

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 170
    const/4 v6, 0x1

    goto :goto_0

    .line 162
    .end local v15    # "profilerInfo":Landroid/app/ProfilerInfo;
    .end local v16    # "options":Landroid/os/Bundle;
    .end local v267    # "result":I
    :cond_0
    const/4 v15, 0x0

    goto :goto_1

    .line 164
    .restart local v15    # "profilerInfo":Landroid/app/ProfilerInfo;
    :cond_1
    const/16 v16, 0x0

    goto :goto_2

    .line 175
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .end local v8    # "callingPackage":Ljava/lang/String;
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v10    # "resolvedType":Ljava/lang/String;
    .end local v11    # "resultTo":Landroid/os/IBinder;
    .end local v12    # "resultWho":Ljava/lang/String;
    .end local v13    # "requestCode":I
    .end local v14    # "startFlags":I
    .end local v15    # "profilerInfo":Landroid/app/ProfilerInfo;
    .end local v181    # "b":Landroid/os/IBinder;
    :pswitch_2
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 176
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v181

    .line 177
    .restart local v181    # "b":Landroid/os/IBinder;
    invoke-static/range {v181 .. v181}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 178
    .restart local v7    # "app":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 179
    .restart local v8    # "callingPackage":Ljava/lang/String;
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/Intent;

    .line 180
    .restart local v9    # "intent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 181
    .restart local v10    # "resolvedType":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v11

    .line 182
    .restart local v11    # "resultTo":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 183
    .restart local v12    # "resultWho":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 184
    .restart local v13    # "requestCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 185
    .restart local v14    # "startFlags":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_2

    sget-object v6, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ProfilerInfo;

    move-object v15, v6

    .line 187
    .restart local v15    # "profilerInfo":Landroid/app/ProfilerInfo;
    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_3

    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Bundle;

    move-object/from16 v16, v6

    .line 189
    .restart local v16    # "options":Landroid/os/Bundle;
    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .local v17, "userId":I
    move-object/from16 v6, p0

    .line 190
    invoke-virtual/range {v6 .. v17}, Landroid/app/ActivityManagerNative;->startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)I

    move-result v0

    move/16 v267, v0

    .line 192
    .restart local v267    # "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 193
    move-object/from16 v0, p3

    move/from16 v1, v267

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 194
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 185
    .end local v15    # "profilerInfo":Landroid/app/ProfilerInfo;
    .end local v16    # "options":Landroid/os/Bundle;
    .end local v17    # "userId":I
    .end local v267    # "result":I
    :cond_2
    const/4 v15, 0x0

    goto :goto_3

    .line 187
    .restart local v15    # "profilerInfo":Landroid/app/ProfilerInfo;
    :cond_3
    const/16 v16, 0x0

    goto :goto_4

    .line 199
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .end local v8    # "callingPackage":Ljava/lang/String;
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v10    # "resolvedType":Ljava/lang/String;
    .end local v11    # "resultTo":Landroid/os/IBinder;
    .end local v12    # "resultWho":Ljava/lang/String;
    .end local v13    # "requestCode":I
    .end local v14    # "startFlags":I
    .end local v15    # "profilerInfo":Landroid/app/ProfilerInfo;
    .end local v181    # "b":Landroid/os/IBinder;
    :pswitch_3
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 200
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v181

    .line 201
    .restart local v181    # "b":Landroid/os/IBinder;
    invoke-static/range {v181 .. v181}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 202
    .restart local v7    # "app":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 203
    .restart local v8    # "callingPackage":Ljava/lang/String;
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/Intent;

    .line 204
    .restart local v9    # "intent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 205
    .restart local v10    # "resolvedType":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v11

    .line 206
    .restart local v11    # "resultTo":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 207
    .restart local v12    # "resultWho":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 208
    .restart local v13    # "requestCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 209
    .restart local v14    # "startFlags":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_4

    sget-object v6, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ProfilerInfo;

    move-object v15, v6

    .line 211
    .restart local v15    # "profilerInfo":Landroid/app/ProfilerInfo;
    :goto_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_5

    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Bundle;

    move-object/from16 v16, v6

    .line 213
    .restart local v16    # "options":Landroid/os/Bundle;
    :goto_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_6

    const/16 v29, 0x1

    .line 214
    .local v29, "ignoreTargetSecurity":Z
    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .restart local v17    # "userId":I
    move-object/from16 v18, p0

    move-object/from16 v19, v7

    move-object/from16 v20, v8

    move-object/from16 v21, v9

    move-object/from16 v22, v10

    move-object/from16 v23, v11

    move-object/from16 v24, v12

    move/from16 v25, v13

    move/from16 v26, v14

    move-object/from16 v27, v15

    move-object/from16 v28, v16

    move/from16 v30, v17

    .line 215
    invoke-virtual/range {v18 .. v30}, Landroid/app/ActivityManagerNative;->startActivityAsCaller(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;ZI)I

    move-result v0

    move/16 v267, v0

    .line 218
    .restart local v267    # "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 219
    move-object/from16 v0, p3

    move/from16 v1, v267

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 220
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 209
    .end local v15    # "profilerInfo":Landroid/app/ProfilerInfo;
    .end local v16    # "options":Landroid/os/Bundle;
    .end local v17    # "userId":I
    .end local v29    # "ignoreTargetSecurity":Z
    .end local v267    # "result":I
    :cond_4
    const/4 v15, 0x0

    goto :goto_5

    .line 211
    .restart local v15    # "profilerInfo":Landroid/app/ProfilerInfo;
    :cond_5
    const/16 v16, 0x0

    goto :goto_6

    .line 213
    .restart local v16    # "options":Landroid/os/Bundle;
    :cond_6
    const/16 v29, 0x0

    goto :goto_7

    .line 225
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .end local v8    # "callingPackage":Ljava/lang/String;
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v10    # "resolvedType":Ljava/lang/String;
    .end local v11    # "resultTo":Landroid/os/IBinder;
    .end local v12    # "resultWho":Ljava/lang/String;
    .end local v13    # "requestCode":I
    .end local v14    # "startFlags":I
    .end local v15    # "profilerInfo":Landroid/app/ProfilerInfo;
    .end local v16    # "options":Landroid/os/Bundle;
    .end local v181    # "b":Landroid/os/IBinder;
    :pswitch_4
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 226
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v181

    .line 227
    .restart local v181    # "b":Landroid/os/IBinder;
    invoke-static/range {v181 .. v181}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 228
    .restart local v7    # "app":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 229
    .restart local v8    # "callingPackage":Ljava/lang/String;
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/Intent;

    .line 230
    .restart local v9    # "intent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 231
    .restart local v10    # "resolvedType":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v11

    .line 232
    .restart local v11    # "resultTo":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 233
    .restart local v12    # "resultWho":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 234
    .restart local v13    # "requestCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 235
    .restart local v14    # "startFlags":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_7

    sget-object v6, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ProfilerInfo;

    move-object v15, v6

    .line 237
    .restart local v15    # "profilerInfo":Landroid/app/ProfilerInfo;
    :goto_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_8

    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Bundle;

    move-object/from16 v16, v6

    .line 239
    .restart local v16    # "options":Landroid/os/Bundle;
    :goto_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .restart local v17    # "userId":I
    move-object/from16 v6, p0

    .line 240
    invoke-virtual/range {v6 .. v17}, Landroid/app/ActivityManagerNative;->startActivityAndWait(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)Landroid/app/IActivityManager$WaitResult;

    move-result-object v0

    move-object/16 v267, v0

    .line 242
    .local v267, "result":Landroid/app/IActivityManager$WaitResult;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 243
    const/4 v6, 0x0

    move-object/from16 v0, v267

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/app/IActivityManager$WaitResult;->writeToParcel(Landroid/os/Parcel;I)V

    .line 244
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 235
    .end local v15    # "profilerInfo":Landroid/app/ProfilerInfo;
    .end local v16    # "options":Landroid/os/Bundle;
    .end local v17    # "userId":I
    .end local v267    # "result":Landroid/app/IActivityManager$WaitResult;
    :cond_7
    const/4 v15, 0x0

    goto :goto_8

    .line 237
    .restart local v15    # "profilerInfo":Landroid/app/ProfilerInfo;
    :cond_8
    const/16 v16, 0x0

    goto :goto_9

    .line 249
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .end local v8    # "callingPackage":Ljava/lang/String;
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v10    # "resolvedType":Ljava/lang/String;
    .end local v11    # "resultTo":Landroid/os/IBinder;
    .end local v12    # "resultWho":Ljava/lang/String;
    .end local v13    # "requestCode":I
    .end local v14    # "startFlags":I
    .end local v15    # "profilerInfo":Landroid/app/ProfilerInfo;
    .end local v181    # "b":Landroid/os/IBinder;
    :pswitch_5
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 250
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v181

    .line 251
    .restart local v181    # "b":Landroid/os/IBinder;
    invoke-static/range {v181 .. v181}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 252
    .restart local v7    # "app":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 253
    .restart local v8    # "callingPackage":Ljava/lang/String;
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/Intent;

    .line 254
    .restart local v9    # "intent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 255
    .restart local v10    # "resolvedType":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v11

    .line 256
    .restart local v11    # "resultTo":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 257
    .restart local v12    # "resultWho":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 258
    .restart local v13    # "requestCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 259
    .restart local v14    # "startFlags":I
    sget-object v6, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Landroid/content/res/Configuration;

    .line 260
    .local v39, "config":Landroid/content/res/Configuration;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_9

    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Bundle;

    move-object/from16 v16, v6

    .line 262
    .restart local v16    # "options":Landroid/os/Bundle;
    :goto_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .restart local v17    # "userId":I
    move-object/from16 v30, p0

    move-object/from16 v31, v7

    move-object/from16 v32, v8

    move-object/from16 v33, v9

    move-object/from16 v34, v10

    move-object/from16 v35, v11

    move-object/from16 v36, v12

    move/from16 v37, v13

    move/from16 v38, v14

    move-object/from16 v40, v16

    move/from16 v41, v17

    .line 263
    invoke-virtual/range {v30 .. v41}, Landroid/app/ActivityManagerNative;->startActivityWithConfig(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/content/res/Configuration;Landroid/os/Bundle;I)I

    move-result v0

    move/16 v267, v0

    .line 265
    .local v267, "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 266
    move-object/from16 v0, p3

    move/from16 v1, v267

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 267
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 260
    .end local v16    # "options":Landroid/os/Bundle;
    .end local v17    # "userId":I
    .end local v267    # "result":I
    :cond_9
    const/16 v16, 0x0

    goto :goto_a

    .line 272
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .end local v8    # "callingPackage":Ljava/lang/String;
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v10    # "resolvedType":Ljava/lang/String;
    .end local v11    # "resultTo":Landroid/os/IBinder;
    .end local v12    # "resultWho":Ljava/lang/String;
    .end local v13    # "requestCode":I
    .end local v14    # "startFlags":I
    .end local v39    # "config":Landroid/content/res/Configuration;
    .end local v181    # "b":Landroid/os/IBinder;
    :pswitch_6
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 273
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v181

    .line 274
    .restart local v181    # "b":Landroid/os/IBinder;
    invoke-static/range {v181 .. v181}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 275
    .restart local v7    # "app":Landroid/app/IApplicationThread;
    sget-object v6, Landroid/content/IntentSender;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/IntentSender;

    .line 276
    .local v9, "intent":Landroid/content/IntentSender;
    const/16 v21, 0x0

    .line 277
    .local v21, "fillInIntent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_a

    .line 278
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v21

    .end local v21    # "fillInIntent":Landroid/content/Intent;
    check-cast v21, Landroid/content/Intent;

    .line 280
    .restart local v21    # "fillInIntent":Landroid/content/Intent;
    :cond_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 281
    .restart local v10    # "resolvedType":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v11

    .line 282
    .restart local v11    # "resultTo":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 283
    .restart local v12    # "resultWho":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 284
    .restart local v13    # "requestCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v26

    .line 285
    .local v26, "flagsMask":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v27

    .line 286
    .local v27, "flagsValues":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_b

    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Bundle;

    move-object/from16 v16, v6

    .restart local v16    # "options":Landroid/os/Bundle;
    :goto_b
    move-object/from16 v18, p0

    move-object/from16 v19, v7

    move-object/from16 v20, v9

    move-object/from16 v22, v10

    move-object/from16 v23, v11

    move-object/from16 v24, v12

    move/from16 v25, v13

    move-object/from16 v28, v16

    .line 288
    invoke-virtual/range {v18 .. v28}, Landroid/app/ActivityManagerNative;->startActivityIntentSender(Landroid/app/IApplicationThread;Landroid/content/IntentSender;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;)I

    move-result v0

    move/16 v267, v0

    .line 291
    .restart local v267    # "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 292
    move-object/from16 v0, p3

    move/from16 v1, v267

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 293
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 286
    .end local v16    # "options":Landroid/os/Bundle;
    .end local v267    # "result":I
    :cond_b
    const/16 v16, 0x0

    goto :goto_b

    .line 298
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .end local v9    # "intent":Landroid/content/IntentSender;
    .end local v10    # "resolvedType":Ljava/lang/String;
    .end local v11    # "resultTo":Landroid/os/IBinder;
    .end local v12    # "resultWho":Ljava/lang/String;
    .end local v13    # "requestCode":I
    .end local v21    # "fillInIntent":Landroid/content/Intent;
    .end local v26    # "flagsMask":I
    .end local v27    # "flagsValues":I
    .end local v181    # "b":Landroid/os/IBinder;
    :pswitch_7
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 299
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 300
    .restart local v8    # "callingPackage":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v42

    .line 301
    .local v42, "callingPid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v43

    .line 302
    .local v43, "callingUid":I
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/Intent;

    .line 303
    .local v9, "intent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 304
    .restart local v10    # "resolvedType":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/service/voice/IVoiceInteractionSession$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/voice/IVoiceInteractionSession;

    move-result-object v46

    .line 306
    .local v46, "session":Landroid/service/voice/IVoiceInteractionSession;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/app/IVoiceInteractor$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IVoiceInteractor;

    move-result-object v47

    .line 308
    .local v47, "interactor":Lcom/android/internal/app/IVoiceInteractor;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 309
    .restart local v14    # "startFlags":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_c

    sget-object v6, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ProfilerInfo;

    move-object v15, v6

    .line 311
    .restart local v15    # "profilerInfo":Landroid/app/ProfilerInfo;
    :goto_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_d

    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Bundle;

    move-object/from16 v16, v6

    .line 313
    .restart local v16    # "options":Landroid/os/Bundle;
    :goto_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .restart local v17    # "userId":I
    move-object/from16 v40, p0

    move-object/from16 v41, v8

    move-object/from16 v44, v9

    move-object/from16 v45, v10

    move/from16 v48, v14

    move-object/from16 v49, v15

    move-object/from16 v50, v16

    move/from16 v51, v17

    .line 314
    invoke-virtual/range {v40 .. v51}, Landroid/app/ActivityManagerNative;->startVoiceActivity(Ljava/lang/String;IILandroid/content/Intent;Ljava/lang/String;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;ILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)I

    move-result v0

    move/16 v267, v0

    .line 316
    .restart local v267    # "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 317
    move-object/from16 v0, p3

    move/from16 v1, v267

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 318
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 309
    .end local v15    # "profilerInfo":Landroid/app/ProfilerInfo;
    .end local v16    # "options":Landroid/os/Bundle;
    .end local v17    # "userId":I
    .end local v267    # "result":I
    :cond_c
    const/4 v15, 0x0

    goto :goto_c

    .line 311
    .restart local v15    # "profilerInfo":Landroid/app/ProfilerInfo;
    :cond_d
    const/16 v16, 0x0

    goto :goto_d

    .line 323
    .end local v8    # "callingPackage":Ljava/lang/String;
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v10    # "resolvedType":Ljava/lang/String;
    .end local v14    # "startFlags":I
    .end local v15    # "profilerInfo":Landroid/app/ProfilerInfo;
    .end local v42    # "callingPid":I
    .end local v43    # "callingUid":I
    .end local v46    # "session":Landroid/service/voice/IVoiceInteractionSession;
    .end local v47    # "interactor":Lcom/android/internal/app/IVoiceInteractor;
    :pswitch_8
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 324
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v186

    .line 325
    .local v186, "callingActivity":Landroid/os/IBinder;
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/Intent;

    .line 326
    .restart local v9    # "intent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_e

    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Bundle;

    move-object/from16 v16, v6

    .line 328
    .restart local v16    # "options":Landroid/os/Bundle;
    :goto_e
    move-object/from16 v0, p0

    move-object/from16 v1, v186

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v9, v2}, Landroid/app/ActivityManagerNative;->startNextMatchingActivity(Landroid/os/IBinder;Landroid/content/Intent;Landroid/os/Bundle;)Z

    move-result v0

    move/16 v267, v0

    .line 329
    .local v267, "result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 330
    move/from16 v0, v267

    if-eqz v0, :cond_f

    const/4 v6, 0x1

    :goto_f
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 331
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 326
    .end local v16    # "options":Landroid/os/Bundle;
    .end local v267    # "result":Z
    :cond_e
    const/16 v16, 0x0

    goto :goto_e

    .line 330
    .restart local v16    # "options":Landroid/os/Bundle;
    .restart local v267    # "result":Z
    :cond_f
    const/4 v6, 0x0

    goto :goto_f

    .line 336
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v16    # "options":Landroid/os/Bundle;
    .end local v186    # "callingActivity":Landroid/os/IBinder;
    .end local v267    # "result":Z
    :pswitch_9
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 337
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v286, v0

    .line 338
    .local v286, "taskId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-nez v6, :cond_10

    const/16 v16, 0x0

    .line 339
    .restart local v16    # "options":Landroid/os/Bundle;
    :goto_10
    move-object/from16 v0, p0

    move/from16 v1, v286

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->startActivityFromRecents(ILandroid/os/Bundle;)I

    move-result v0

    move/16 v267, v0

    .line 340
    .local v267, "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 341
    move-object/from16 v0, p3

    move/from16 v1, v267

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 342
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 338
    .end local v16    # "options":Landroid/os/Bundle;
    .end local v267    # "result":I
    :cond_10
    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Bundle;

    move-object/from16 v16, v6

    goto :goto_10

    .line 346
    .end local v286    # "taskId":I
    :pswitch_a
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 347
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v76

    .line 348
    .local v76, "token":Landroid/os/IBinder;
    const/16 v54, 0x0

    .line 349
    .local v54, "resultData":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v53

    .line 350
    .local v53, "resultCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_11

    .line 351
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v54

    .end local v54    # "resultData":Landroid/content/Intent;
    check-cast v54, Landroid/content/Intent;

    .line 353
    .restart local v54    # "resultData":Landroid/content/Intent;
    :cond_11
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_12

    const/16 v202, 0x1

    .line 354
    .local v202, "finishTask":Z
    :goto_11
    move-object/from16 v0, p0

    move-object/from16 v1, v76

    move/from16 v2, v53

    move-object/from16 v3, v54

    move/from16 v4, v202

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->finishActivity(Landroid/os/IBinder;ILandroid/content/Intent;Z)Z

    move-result v0

    move/16 v264, v0

    .line 355
    .local v264, "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 356
    move/from16 v0, v264

    if-eqz v0, :cond_13

    const/4 v6, 0x1

    :goto_12
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 357
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 353
    .end local v202    # "finishTask":Z
    .end local v264    # "res":Z
    :cond_12
    const/16 v202, 0x0

    goto :goto_11

    .line 356
    .restart local v202    # "finishTask":Z
    .restart local v264    # "res":Z
    :cond_13
    const/4 v6, 0x0

    goto :goto_12

    .line 361
    .end local v53    # "resultCode":I
    .end local v54    # "resultData":Landroid/content/Intent;
    .end local v76    # "token":Landroid/os/IBinder;
    .end local v202    # "finishTask":Z
    .end local v264    # "res":Z
    :pswitch_b
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 362
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v76

    .line 363
    .restart local v76    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 364
    .restart local v12    # "resultWho":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 365
    .restart local v13    # "requestCode":I
    move-object/from16 v0, p0

    move-object/from16 v1, v76

    invoke-virtual {v0, v1, v12, v13}, Landroid/app/ActivityManagerNative;->finishSubActivity(Landroid/os/IBinder;Ljava/lang/String;I)V

    .line 366
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 367
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 371
    .end local v12    # "resultWho":Ljava/lang/String;
    .end local v13    # "requestCode":I
    .end local v76    # "token":Landroid/os/IBinder;
    :pswitch_c
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 372
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v76

    .line 373
    .restart local v76    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v76

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->finishActivityAffinity(Landroid/os/IBinder;)Z

    move-result v0

    move/16 v264, v0

    .line 374
    .restart local v264    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 375
    move/from16 v0, v264

    if-eqz v0, :cond_14

    const/4 v6, 0x1

    :goto_13
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 376
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 375
    :cond_14
    const/4 v6, 0x0

    goto :goto_13

    .line 380
    .end local v76    # "token":Landroid/os/IBinder;
    .end local v264    # "res":Z
    :pswitch_d
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 381
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/service/voice/IVoiceInteractionSession$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/voice/IVoiceInteractionSession;

    move-result-object v46

    .line 383
    .restart local v46    # "session":Landroid/service/voice/IVoiceInteractionSession;
    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->finishVoiceTask(Landroid/service/voice/IVoiceInteractionSession;)V

    .line 384
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 385
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 389
    .end local v46    # "session":Landroid/service/voice/IVoiceInteractionSession;
    :pswitch_e
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 390
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v76

    .line 391
    .restart local v76    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v76

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->releaseActivityInstance(Landroid/os/IBinder;)Z

    move-result v0

    move/16 v264, v0

    .line 392
    .restart local v264    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 393
    move/from16 v0, v264

    if-eqz v0, :cond_15

    const/4 v6, 0x1

    :goto_14
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 394
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 393
    :cond_15
    const/4 v6, 0x0

    goto :goto_14

    .line 398
    .end local v76    # "token":Landroid/os/IBinder;
    .end local v264    # "res":Z
    :pswitch_f
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 399
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 400
    .restart local v7    # "app":Landroid/app/IApplicationThread;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/app/ActivityManagerNative;->releaseSomeActivities(Landroid/app/IApplicationThread;)V

    .line 401
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 402
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 406
    .end local v7    # "app":Landroid/app/IApplicationThread;
    :pswitch_10
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 407
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v76

    .line 408
    .restart local v76    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v76

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->willActivityBeVisible(Landroid/os/IBinder;)Z

    move-result v0

    move/16 v264, v0

    .line 409
    .restart local v264    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 410
    move/from16 v0, v264

    if-eqz v0, :cond_16

    const/4 v6, 0x1

    :goto_15
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 411
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 410
    :cond_16
    const/4 v6, 0x0

    goto :goto_15

    .line 416
    .end local v76    # "token":Landroid/os/IBinder;
    .end local v264    # "res":Z
    :pswitch_11
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 417
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v181

    .line 418
    .restart local v181    # "b":Landroid/os/IBinder;
    if-eqz v181, :cond_17

    invoke-static/range {v181 .. v181}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 420
    .restart local v7    # "app":Landroid/app/IApplicationThread;
    :goto_16
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v32

    .line 421
    .local v32, "packageName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v181

    .line 422
    if-eqz v181, :cond_18

    invoke-static/range {v181 .. v181}, Landroid/content/IIntentReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentReceiver;

    move-result-object v33

    .line 424
    .local v33, "rec":Landroid/content/IIntentReceiver;
    :goto_17
    sget-object v6, Landroid/content/IntentFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Landroid/content/IntentFilter;

    .line 425
    .local v34, "filter":Landroid/content/IntentFilter;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v35

    .line 426
    .local v35, "perm":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .restart local v17    # "userId":I
    move-object/from16 v30, p0

    move-object/from16 v31, v7

    move/from16 v36, v17

    .line 427
    invoke-virtual/range {v30 .. v36}, Landroid/app/ActivityManagerNative;->registerReceiver(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/IIntentReceiver;Landroid/content/IntentFilter;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v9

    .line 428
    .restart local v9    # "intent":Landroid/content/Intent;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 429
    if-eqz v9, :cond_19

    .line 430
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 431
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v9, v0, v6}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 435
    :goto_18
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 418
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v17    # "userId":I
    .end local v32    # "packageName":Ljava/lang/String;
    .end local v33    # "rec":Landroid/content/IIntentReceiver;
    .end local v34    # "filter":Landroid/content/IntentFilter;
    .end local v35    # "perm":Ljava/lang/String;
    :cond_17
    const/4 v7, 0x0

    goto :goto_16

    .line 422
    .restart local v7    # "app":Landroid/app/IApplicationThread;
    .restart local v32    # "packageName":Ljava/lang/String;
    :cond_18
    const/16 v33, 0x0

    goto :goto_17

    .line 433
    .restart local v9    # "intent":Landroid/content/Intent;
    .restart local v17    # "userId":I
    .restart local v33    # "rec":Landroid/content/IIntentReceiver;
    .restart local v34    # "filter":Landroid/content/IntentFilter;
    .restart local v35    # "perm":Ljava/lang/String;
    :cond_19
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_18

    .line 440
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v17    # "userId":I
    .end local v32    # "packageName":Ljava/lang/String;
    .end local v33    # "rec":Landroid/content/IIntentReceiver;
    .end local v34    # "filter":Landroid/content/IntentFilter;
    .end local v35    # "perm":Ljava/lang/String;
    .end local v181    # "b":Landroid/os/IBinder;
    :pswitch_12
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 441
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v181

    .line 442
    .restart local v181    # "b":Landroid/os/IBinder;
    if-nez v181, :cond_1a

    .line 443
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 445
    :cond_1a
    invoke-static/range {v181 .. v181}, Landroid/content/IIntentReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentReceiver;

    move-result-object v33

    .line 446
    .restart local v33    # "rec":Landroid/content/IIntentReceiver;
    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->unregisterReceiver(Landroid/content/IIntentReceiver;)V

    .line 447
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 448
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 453
    .end local v33    # "rec":Landroid/content/IIntentReceiver;
    .end local v181    # "b":Landroid/os/IBinder;
    :pswitch_13
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 454
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v181

    .line 455
    .restart local v181    # "b":Landroid/os/IBinder;
    if-eqz v181, :cond_1b

    invoke-static/range {v181 .. v181}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 457
    .restart local v7    # "app":Landroid/app/IApplicationThread;
    :goto_19
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/Intent;

    .line 458
    .restart local v9    # "intent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 459
    .restart local v10    # "resolvedType":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v181

    .line 460
    if-eqz v181, :cond_1c

    invoke-static/range {v181 .. v181}, Landroid/content/IIntentReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentReceiver;

    move-result-object v11

    .line 462
    .local v11, "resultTo":Landroid/content/IIntentReceiver;
    :goto_1a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v53

    .line 463
    .restart local v53    # "resultCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v54

    .line 464
    .local v54, "resultData":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v55

    .line 465
    .local v55, "resultExtras":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v56

    .line 466
    .local v56, "perms":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v57

    .line 467
    .local v57, "appOp":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v16

    .line 468
    .restart local v16    # "options":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_1d

    const/16 v59, 0x1

    .line 469
    .local v59, "serialized":Z
    :goto_1b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_1e

    const/16 v60, 0x1

    .line 470
    .local v60, "sticky":Z
    :goto_1c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .restart local v17    # "userId":I
    move-object/from16 v48, p0

    move-object/from16 v49, v7

    move-object/from16 v50, v9

    move-object/from16 v51, v10

    move-object/from16 v52, v11

    move-object/from16 v58, v16

    move/from16 v61, v17

    .line 471
    invoke-virtual/range {v48 .. v61}, Landroid/app/ActivityManagerNative;->broadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZI)I

    move-result v0

    move/16 v264, v0

    .line 474
    .local v264, "res":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 475
    move-object/from16 v0, p3

    move/from16 v1, v264

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 476
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 455
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v10    # "resolvedType":Ljava/lang/String;
    .end local v11    # "resultTo":Landroid/content/IIntentReceiver;
    .end local v16    # "options":Landroid/os/Bundle;
    .end local v17    # "userId":I
    .end local v53    # "resultCode":I
    .end local v54    # "resultData":Ljava/lang/String;
    .end local v55    # "resultExtras":Landroid/os/Bundle;
    .end local v56    # "perms":[Ljava/lang/String;
    .end local v57    # "appOp":I
    .end local v59    # "serialized":Z
    .end local v60    # "sticky":Z
    .end local v264    # "res":I
    :cond_1b
    const/4 v7, 0x0

    goto :goto_19

    .line 460
    .restart local v7    # "app":Landroid/app/IApplicationThread;
    .restart local v9    # "intent":Landroid/content/Intent;
    .restart local v10    # "resolvedType":Ljava/lang/String;
    :cond_1c
    const/4 v11, 0x0

    goto :goto_1a

    .line 468
    .restart local v11    # "resultTo":Landroid/content/IIntentReceiver;
    .restart local v16    # "options":Landroid/os/Bundle;
    .restart local v53    # "resultCode":I
    .restart local v54    # "resultData":Ljava/lang/String;
    .restart local v55    # "resultExtras":Landroid/os/Bundle;
    .restart local v56    # "perms":[Ljava/lang/String;
    .restart local v57    # "appOp":I
    :cond_1d
    const/16 v59, 0x0

    goto :goto_1b

    .line 469
    .restart local v59    # "serialized":Z
    :cond_1e
    const/16 v60, 0x0

    goto :goto_1c

    .line 481
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v10    # "resolvedType":Ljava/lang/String;
    .end local v11    # "resultTo":Landroid/content/IIntentReceiver;
    .end local v16    # "options":Landroid/os/Bundle;
    .end local v53    # "resultCode":I
    .end local v54    # "resultData":Ljava/lang/String;
    .end local v55    # "resultExtras":Landroid/os/Bundle;
    .end local v56    # "perms":[Ljava/lang/String;
    .end local v57    # "appOp":I
    .end local v59    # "serialized":Z
    .end local v181    # "b":Landroid/os/IBinder;
    :pswitch_14
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 482
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v181

    .line 483
    .restart local v181    # "b":Landroid/os/IBinder;
    if-eqz v181, :cond_1f

    invoke-static/range {v181 .. v181}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 484
    .restart local v7    # "app":Landroid/app/IApplicationThread;
    :goto_1d
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/Intent;

    .line 485
    .restart local v9    # "intent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 486
    .restart local v17    # "userId":I
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v7, v9, v1}, Landroid/app/ActivityManagerNative;->unbroadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;I)V

    .line 487
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 488
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 483
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v17    # "userId":I
    :cond_1f
    const/4 v7, 0x0

    goto :goto_1d

    .line 492
    .end local v181    # "b":Landroid/os/IBinder;
    :pswitch_15
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 493
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v62

    .line 494
    .local v62, "who":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v53

    .line 495
    .restart local v53    # "resultCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v54

    .line 496
    .restart local v54    # "resultData":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v55

    .line 497
    .restart local v55    # "resultExtras":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_21

    const/16 v66, 0x1

    .line 498
    .local v66, "resultAbort":Z
    :goto_1e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v67

    .line 499
    .local v67, "intentFlags":I
    if-eqz v62, :cond_20

    move-object/from16 v61, p0

    move/from16 v63, v53

    move-object/from16 v64, v54

    move-object/from16 v65, v55

    .line 500
    invoke-virtual/range {v61 .. v67}, Landroid/app/ActivityManagerNative;->finishReceiver(Landroid/os/IBinder;ILjava/lang/String;Landroid/os/Bundle;ZI)V

    .line 502
    :cond_20
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 503
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 497
    .end local v66    # "resultAbort":Z
    .end local v67    # "intentFlags":I
    :cond_21
    const/16 v66, 0x0

    goto :goto_1e

    .line 509
    .end local v53    # "resultCode":I
    .end local v54    # "resultData":Ljava/lang/String;
    .end local v55    # "resultExtras":Landroid/os/Bundle;
    .end local v62    # "who":Landroid/os/IBinder;
    :pswitch_16
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 510
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v62

    .line 511
    .restart local v62    # "who":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v70

    .line 512
    .local v70, "hasCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v53

    .line 513
    .restart local v53    # "resultCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v54

    .line 514
    .restart local v54    # "resultData":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v55

    .line 515
    .restart local v55    # "resultExtras":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_23

    const/16 v66, 0x1

    .line 516
    .restart local v66    # "resultAbort":Z
    :goto_1f
    if-eqz v62, :cond_22

    move-object/from16 v68, p0

    move-object/from16 v69, v62

    move/from16 v71, v53

    move-object/from16 v72, v54

    move-object/from16 v73, v55

    move/from16 v74, v66

    .line 517
    invoke-virtual/range {v68 .. v74}, Landroid/app/ActivityManagerNative;->finishNotOrderReceiver(Landroid/os/IBinder;IILjava/lang/String;Landroid/os/Bundle;Z)V

    .line 519
    :cond_22
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 520
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 515
    .end local v66    # "resultAbort":Z
    :cond_23
    const/16 v66, 0x0

    goto :goto_1f

    .line 525
    .end local v53    # "resultCode":I
    .end local v54    # "resultData":Ljava/lang/String;
    .end local v55    # "resultExtras":Landroid/os/Bundle;
    .end local v62    # "who":Landroid/os/IBinder;
    .end local v70    # "hasCode":I
    :pswitch_17
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 526
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 528
    .restart local v7    # "app":Landroid/app/IApplicationThread;
    if-eqz v7, :cond_24

    .line 529
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/app/ActivityManagerNative;->attachApplication(Landroid/app/IApplicationThread;)V

    .line 531
    :cond_24
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 532
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 536
    .end local v7    # "app":Landroid/app/IApplicationThread;
    :pswitch_18
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 537
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v76

    .line 538
    .restart local v76    # "token":Landroid/os/IBinder;
    const/16 v39, 0x0

    .line 539
    .restart local v39    # "config":Landroid/content/res/Configuration;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_25

    .line 540
    sget-object v6, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v39

    .end local v39    # "config":Landroid/content/res/Configuration;
    check-cast v39, Landroid/content/res/Configuration;

    .line 542
    .restart local v39    # "config":Landroid/content/res/Configuration;
    :cond_25
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_27

    const/4 v0, 0x1

    move/16 v280, v0

    .line 543
    .local v280, "stopProfiling":Z
    :goto_20
    if-eqz v76, :cond_26

    .line 544
    move-object/from16 v0, p0

    move-object/from16 v1, v76

    move-object/from16 v2, v39

    move/from16 v3, v280

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->activityIdle(Landroid/os/IBinder;Landroid/content/res/Configuration;Z)V

    .line 546
    :cond_26
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 547
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 542
    .end local v280    # "stopProfiling":Z
    :cond_27
    const/4 v0, 0x0

    move/16 v280, v0

    goto :goto_20

    .line 551
    .end local v39    # "config":Landroid/content/res/Configuration;
    .end local v76    # "token":Landroid/os/IBinder;
    :pswitch_19
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 552
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v76

    .line 553
    .restart local v76    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v76

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->activityResumed(Landroid/os/IBinder;)V

    .line 554
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 555
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 559
    .end local v76    # "token":Landroid/os/IBinder;
    :pswitch_1a
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 560
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v76

    .line 561
    .restart local v76    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v76

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->activityPaused(Landroid/os/IBinder;)V

    .line 562
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 563
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 567
    .end local v76    # "token":Landroid/os/IBinder;
    :pswitch_1b
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 568
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v76

    .line 569
    .restart local v76    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v231

    .line 570
    .local v231, "map":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readPersistableBundle()Landroid/os/PersistableBundle;

    move-result-object v246

    .line 571
    .local v246, "persistentState":Landroid/os/PersistableBundle;
    sget-object v6, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v193

    check-cast v193, Ljava/lang/CharSequence;

    .line 572
    .local v193, "description":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    move-object/from16 v1, v76

    move-object/from16 v2, v231

    move-object/from16 v3, v246

    move-object/from16 v4, v193

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->activityStopped(Landroid/os/IBinder;Landroid/os/Bundle;Landroid/os/PersistableBundle;Ljava/lang/CharSequence;)V

    .line 573
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 574
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 578
    .end local v76    # "token":Landroid/os/IBinder;
    .end local v193    # "description":Ljava/lang/CharSequence;
    .end local v231    # "map":Landroid/os/Bundle;
    .end local v246    # "persistentState":Landroid/os/PersistableBundle;
    :pswitch_1c
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 579
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v76

    .line 580
    .restart local v76    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v76

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->activitySlept(Landroid/os/IBinder;)V

    .line 581
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 582
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 586
    .end local v76    # "token":Landroid/os/IBinder;
    :pswitch_1d
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 587
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v76

    .line 588
    .restart local v76    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v76

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->activityDestroyed(Landroid/os/IBinder;)V

    .line 589
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 590
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 594
    .end local v76    # "token":Landroid/os/IBinder;
    :pswitch_1e
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 595
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v76

    .line 596
    .restart local v76    # "token":Landroid/os/IBinder;
    if-eqz v76, :cond_28

    move-object/from16 v0, p0

    move-object/from16 v1, v76

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getCallingPackage(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object v0

    move-object/16 v264, v0

    .line 597
    .local v264, "res":Ljava/lang/String;
    :goto_21
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 598
    move-object/from16 v0, p3

    move-object/from16 v1, v264

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 599
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 596
    .end local v264    # "res":Ljava/lang/String;
    :cond_28
    const/4 v0, 0x0

    move-object/16 v264, v0

    goto :goto_21

    .line 603
    .end local v76    # "token":Landroid/os/IBinder;
    :pswitch_1f
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 604
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v76

    .line 605
    .restart local v76    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v76

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getCallingActivity(Landroid/os/IBinder;)Landroid/content/ComponentName;

    move-result-object v188

    .line 606
    .local v188, "cn":Landroid/content/ComponentName;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 607
    move-object/from16 v0, v188

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Landroid/content/ComponentName;->writeToParcel(Landroid/content/ComponentName;Landroid/os/Parcel;)V

    .line 608
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 612
    .end local v76    # "token":Landroid/os/IBinder;
    .end local v188    # "cn":Landroid/content/ComponentName;
    :pswitch_20
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 613
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 614
    .restart local v8    # "callingPackage":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/app/ActivityManagerNative;->getAppTasks(Ljava/lang/String;)Ljava/util/List;

    move-result-object v228

    .line 615
    .local v228, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/IAppTask;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 616
    if-eqz v228, :cond_29

    invoke-interface/range {v228 .. v228}, Ljava/util/List;->size()I

    move-result v164

    .line 617
    .local v164, "N":I
    :goto_22
    move-object/from16 v0, p3

    move/from16 v1, v164

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 619
    const/16 v206, 0x0

    .local v206, "i":I
    :goto_23
    move/from16 v0, v206

    move/from16 v1, v164

    if-ge v0, v1, :cond_2a

    .line 620
    move-object/from16 v0, v228

    move/from16 v1, v206

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object/16 v285, v0

    move-object/from16 v0, v285

    check-cast v0, Landroid/app/IAppTask;

    move-object/16 v285, v0

    .line 621
    .local v285, "task":Landroid/app/IAppTask;
    invoke-interface/range {v285 .. v285}, Landroid/app/IAppTask;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 619
    add-int/lit8 v206, v206, 0x1

    goto :goto_23

    .line 616
    .end local v164    # "N":I
    .end local v206    # "i":I
    .end local v285    # "task":Landroid/app/IAppTask;
    :cond_29
    const/16 v164, -0x1

    goto :goto_22

    .line 623
    .restart local v164    # "N":I
    .restart local v206    # "i":I
    :cond_2a
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 627
    .end local v8    # "callingPackage":Ljava/lang/String;
    .end local v164    # "N":I
    .end local v206    # "i":I
    .end local v228    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/IAppTask;>;"
    :pswitch_21
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 628
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v173

    .line 629
    .local v173, "activityToken":Landroid/os/IBinder;
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/Intent;

    .line 630
    .restart local v9    # "intent":Landroid/content/Intent;
    sget-object v6, Landroid/app/ActivityManager$TaskDescription;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v192

    check-cast v192, Landroid/app/ActivityManager$TaskDescription;

    .line 632
    .local v192, "descr":Landroid/app/ActivityManager$TaskDescription;
    sget-object v6, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object/16 v288, v0

    move-object/from16 v0, v288

    check-cast v0, Landroid/graphics/Bitmap;

    move-object/16 v288, v0

    .line 633
    .local v288, "thumbnail":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    move-object/from16 v1, v173

    move-object/from16 v2, v192

    move-object/from16 v3, v288

    invoke-virtual {v0, v1, v9, v2, v3}, Landroid/app/ActivityManagerNative;->addAppTask(Landroid/os/IBinder;Landroid/content/Intent;Landroid/app/ActivityManager$TaskDescription;Landroid/graphics/Bitmap;)I

    move-result v0

    move/16 v264, v0

    .line 634
    .local v264, "res":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 635
    move-object/from16 v0, p3

    move/from16 v1, v264

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 636
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 640
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v173    # "activityToken":Landroid/os/IBinder;
    .end local v192    # "descr":Landroid/app/ActivityManager$TaskDescription;
    .end local v264    # "res":I
    .end local v288    # "thumbnail":Landroid/graphics/Bitmap;
    :pswitch_22
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 641
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getAppTaskThumbnailSize()Landroid/graphics/Point;

    move-result-object v0

    move-object/16 v273, v0

    .line 642
    .local v273, "size":Landroid/graphics/Point;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 643
    const/4 v6, 0x0

    move-object/from16 v0, v273

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/graphics/Point;->writeToParcel(Landroid/os/Parcel;I)V

    .line 644
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 648
    .end local v273    # "size":Landroid/graphics/Point;
    :pswitch_23
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 649
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v233

    .line 650
    .local v233, "maxNum":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v86

    .line 651
    .local v86, "fl":I
    move-object/from16 v0, p0

    move/from16 v1, v233

    move/from16 v2, v86

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->getTasks(II)Ljava/util/List;

    move-result-object v226

    .line 652
    .local v226, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 653
    if-eqz v226, :cond_2b

    invoke-interface/range {v226 .. v226}, Ljava/util/List;->size()I

    move-result v164

    .line 654
    .restart local v164    # "N":I
    :goto_24
    move-object/from16 v0, p3

    move/from16 v1, v164

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 656
    const/16 v206, 0x0

    .restart local v206    # "i":I
    :goto_25
    move/from16 v0, v206

    move/from16 v1, v164

    if-ge v0, v1, :cond_2c

    .line 657
    move-object/from16 v0, v226

    move/from16 v1, v206

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v210

    check-cast v210, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 658
    .local v210, "info":Landroid/app/ActivityManager$RunningTaskInfo;
    const/4 v6, 0x0

    move-object/from16 v0, v210

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/app/ActivityManager$RunningTaskInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 656
    add-int/lit8 v206, v206, 0x1

    goto :goto_25

    .line 653
    .end local v164    # "N":I
    .end local v206    # "i":I
    .end local v210    # "info":Landroid/app/ActivityManager$RunningTaskInfo;
    :cond_2b
    const/16 v164, -0x1

    goto :goto_24

    .line 660
    .restart local v164    # "N":I
    .restart local v206    # "i":I
    :cond_2c
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 664
    .end local v86    # "fl":I
    .end local v164    # "N":I
    .end local v206    # "i":I
    .end local v226    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .end local v233    # "maxNum":I
    :pswitch_24
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 665
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v233

    .line 666
    .restart local v233    # "maxNum":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v86

    .line 667
    .restart local v86    # "fl":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 668
    .restart local v17    # "userId":I
    move-object/from16 v0, p0

    move/from16 v1, v233

    move/from16 v2, v86

    move/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->getRecentTasks(III)Ljava/util/List;

    move-result-object v223

    .line 670
    .local v223, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 671
    move-object/from16 v0, p3

    move-object/from16 v1, v223

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 672
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 676
    .end local v17    # "userId":I
    .end local v86    # "fl":I
    .end local v223    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    .end local v233    # "maxNum":I
    :pswitch_25
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 677
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v77

    .line 678
    .local v77, "id":I
    move-object/from16 v0, p0

    move/from16 v1, v77

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getTaskThumbnail(I)Landroid/app/ActivityManager$TaskThumbnail;

    move-result-object v0

    move-object/16 v287, v0

    .line 679
    .local v287, "taskThumbnail":Landroid/app/ActivityManager$TaskThumbnail;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 680
    move-object/from16 v0, v287

    if-eqz v0, :cond_2d

    .line 681
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 682
    const/4 v6, 0x1

    move-object/from16 v0, v287

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/app/ActivityManager$TaskThumbnail;->writeToParcel(Landroid/os/Parcel;I)V

    .line 686
    :goto_26
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 684
    :cond_2d
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_26

    .line 690
    .end local v77    # "id":I
    .end local v287    # "taskThumbnail":Landroid/app/ActivityManager$TaskThumbnail;
    :pswitch_26
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 691
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v233

    .line 692
    .restart local v233    # "maxNum":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v86

    .line 693
    .restart local v86    # "fl":I
    move-object/from16 v0, p0

    move/from16 v1, v233

    move/from16 v2, v86

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->getServices(II)Ljava/util/List;

    move-result-object v225

    .line 694
    .local v225, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 695
    if-eqz v225, :cond_2e

    invoke-interface/range {v225 .. v225}, Ljava/util/List;->size()I

    move-result v164

    .line 696
    .restart local v164    # "N":I
    :goto_27
    move-object/from16 v0, p3

    move/from16 v1, v164

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 698
    const/16 v206, 0x0

    .restart local v206    # "i":I
    :goto_28
    move/from16 v0, v206

    move/from16 v1, v164

    if-ge v0, v1, :cond_2f

    .line 699
    move-object/from16 v0, v225

    move/from16 v1, v206

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v210

    check-cast v210, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 700
    .local v210, "info":Landroid/app/ActivityManager$RunningServiceInfo;
    const/4 v6, 0x0

    move-object/from16 v0, v210

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/app/ActivityManager$RunningServiceInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 698
    add-int/lit8 v206, v206, 0x1

    goto :goto_28

    .line 695
    .end local v164    # "N":I
    .end local v206    # "i":I
    .end local v210    # "info":Landroid/app/ActivityManager$RunningServiceInfo;
    :cond_2e
    const/16 v164, -0x1

    goto :goto_27

    .line 702
    .restart local v164    # "N":I
    .restart local v206    # "i":I
    :cond_2f
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 706
    .end local v86    # "fl":I
    .end local v164    # "N":I
    .end local v206    # "i":I
    .end local v225    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    .end local v233    # "maxNum":I
    :pswitch_27
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 707
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getProcessesInErrorState()Ljava/util/List;

    move-result-object v222

    .line 708
    .local v222, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$ProcessErrorStateInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 709
    move-object/from16 v0, p3

    move-object/from16 v1, v222

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 710
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 714
    .end local v222    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$ProcessErrorStateInfo;>;"
    :pswitch_28
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 715
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v224

    .line 716
    .local v224, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 717
    move-object/from16 v0, p3

    move-object/from16 v1, v224

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 718
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 722
    .end local v224    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :pswitch_29
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 723
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getRunningExternalApplications()Ljava/util/List;

    move-result-object v229

    .line 724
    .local v229, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 725
    move-object/from16 v0, p3

    move-object/from16 v1, v229

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 726
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 730
    .end local v229    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    :pswitch_2a
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 731
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v285, v0

    .line 732
    .local v285, "task":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v86

    .line 733
    .restart local v86    # "fl":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_30

    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Bundle;

    move-object/from16 v16, v6

    .line 735
    .restart local v16    # "options":Landroid/os/Bundle;
    :goto_29
    move-object/from16 v0, p0

    move/from16 v1, v285

    move/from16 v2, v86

    move-object/from16 v3, v16

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->moveTaskToFront(IILandroid/os/Bundle;)V

    .line 736
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 737
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 733
    .end local v16    # "options":Landroid/os/Bundle;
    :cond_30
    const/16 v16, 0x0

    goto :goto_29

    .line 741
    .end local v86    # "fl":I
    .end local v285    # "task":I
    :pswitch_2b
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 742
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v76

    .line 743
    .restart local v76    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_31

    const/16 v238, 0x1

    .line 744
    .local v238, "nonRoot":Z
    :goto_2a
    move-object/from16 v0, p0

    move-object/from16 v1, v76

    move/from16 v2, v238

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->moveActivityTaskToBack(Landroid/os/IBinder;Z)Z

    move-result v0

    move/16 v264, v0

    .line 745
    .local v264, "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 746
    move/from16 v0, v264

    if-eqz v0, :cond_32

    const/4 v6, 0x1

    :goto_2b
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 747
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 743
    .end local v238    # "nonRoot":Z
    .end local v264    # "res":Z
    :cond_31
    const/16 v238, 0x0

    goto :goto_2a

    .line 746
    .restart local v238    # "nonRoot":Z
    .restart local v264    # "res":Z
    :cond_32
    const/4 v6, 0x0

    goto :goto_2b

    .line 751
    .end local v76    # "token":Landroid/os/IBinder;
    .end local v238    # "nonRoot":Z
    .end local v264    # "res":Z
    :pswitch_2c
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 752
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v285, v0

    .line 753
    .restart local v285    # "task":I
    move-object/from16 v0, p0

    move/from16 v1, v285

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->moveTaskBackwards(I)V

    .line 754
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 755
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 759
    .end local v285    # "task":I
    :pswitch_2d
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 760
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v286, v0

    .line 761
    .restart local v286    # "taskId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v277, v0

    .line 762
    .local v277, "stackId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_33

    const/4 v0, 0x1

    move/16 v289, v0

    .line 763
    .local v289, "toTop":Z
    :goto_2c
    move-object/from16 v0, p0

    move/from16 v1, v286

    move/from16 v2, v277

    move/from16 v3, v289

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->moveTaskToStack(IIZ)V

    .line 764
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 765
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 762
    .end local v289    # "toTop":Z
    :cond_33
    const/4 v0, 0x0

    move/16 v289, v0

    goto :goto_2c

    .line 769
    .end local v277    # "stackId":I
    .end local v286    # "taskId":I
    :pswitch_2e
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 770
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v277, v0

    .line 771
    .restart local v277    # "stackId":I
    sget-object v6, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object/16 v258, v0

    move-object/from16 v0, v258

    check-cast v0, Landroid/graphics/Rect;

    move-object/16 v258, v0

    .line 772
    .local v258, "r":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    move/from16 v1, v277

    move-object/from16 v2, v258

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->resizeStack(ILandroid/graphics/Rect;)V

    .line 773
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 774
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 778
    .end local v258    # "r":Landroid/graphics/Rect;
    .end local v277    # "stackId":I
    :pswitch_2f
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 779
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getAllStackInfos()Ljava/util/List;

    move-result-object v227

    .line 780
    .local v227, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$StackInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 781
    move-object/from16 v0, p3

    move-object/from16 v1, v227

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 782
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 786
    .end local v227    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$StackInfo;>;"
    :pswitch_30
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 787
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v277, v0

    .line 788
    .restart local v277    # "stackId":I
    move-object/from16 v0, p0

    move/from16 v1, v277

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getStackInfo(I)Landroid/app/ActivityManager$StackInfo;

    move-result-object v210

    .line 789
    .local v210, "info":Landroid/app/ActivityManager$StackInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 790
    if-eqz v210, :cond_34

    .line 791
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 792
    const/4 v6, 0x0

    move-object/from16 v0, v210

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/app/ActivityManager$StackInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 796
    :goto_2d
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 794
    :cond_34
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2d

    .line 800
    .end local v210    # "info":Landroid/app/ActivityManager$StackInfo;
    .end local v277    # "stackId":I
    :pswitch_31
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 801
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v286, v0

    .line 802
    .restart local v286    # "taskId":I
    move-object/from16 v0, p0

    move/from16 v1, v286

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->isInHomeStack(I)Z

    move-result v214

    .line 803
    .local v214, "isInHomeStack":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 804
    if-eqz v214, :cond_35

    const/4 v6, 0x1

    :goto_2e
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 805
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 804
    :cond_35
    const/4 v6, 0x0

    goto :goto_2e

    .line 809
    .end local v214    # "isInHomeStack":Z
    .end local v286    # "taskId":I
    :pswitch_32
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 810
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v277, v0

    .line 811
    .restart local v277    # "stackId":I
    move-object/from16 v0, p0

    move/from16 v1, v277

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->setFocusedStack(I)V

    .line 812
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 813
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 817
    .end local v277    # "stackId":I
    :pswitch_33
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 818
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getFocusedStackId()I

    move-result v205

    .line 819
    .local v205, "focusedStackId":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 820
    move-object/from16 v0, p3

    move/from16 v1, v205

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 821
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 825
    .end local v205    # "focusedStackId":I
    :pswitch_34
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 826
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v76

    .line 827
    .restart local v76    # "token":Landroid/os/IBinder;
    invoke-static/range {v76 .. v76}, Landroid/app/ITaskStackListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/ITaskStackListener;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/app/ActivityManagerNative;->registerTaskStackListener(Landroid/app/ITaskStackListener;)V

    .line 828
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 829
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 833
    .end local v76    # "token":Landroid/os/IBinder;
    :pswitch_35
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 834
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v76

    .line 835
    .restart local v76    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_36

    const/16 v240, 0x1

    .line 836
    .local v240, "onlyRoot":Z
    :goto_2f
    if-eqz v76, :cond_37

    move-object/from16 v0, p0

    move-object/from16 v1, v76

    move/from16 v2, v240

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->getTaskForActivity(Landroid/os/IBinder;Z)I

    move-result v0

    move/16 v264, v0

    .line 838
    .local v264, "res":I
    :goto_30
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 839
    move-object/from16 v0, p3

    move/from16 v1, v264

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 840
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 835
    .end local v240    # "onlyRoot":Z
    .end local v264    # "res":I
    :cond_36
    const/16 v240, 0x0

    goto :goto_2f

    .line 836
    .restart local v240    # "onlyRoot":Z
    :cond_37
    const/4 v0, -0x1

    move/16 v264, v0

    goto :goto_30

    .line 844
    .end local v76    # "token":Landroid/os/IBinder;
    .end local v240    # "onlyRoot":Z
    :pswitch_36
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 845
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v181

    .line 846
    .restart local v181    # "b":Landroid/os/IBinder;
    invoke-static/range {v181 .. v181}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 847
    .restart local v7    # "app":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v110

    .line 848
    .local v110, "name":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 849
    .restart local v17    # "userId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_38

    const/4 v0, 0x1

    move/16 v276, v0

    .line 850
    .local v276, "stable":Z
    :goto_31
    move-object/from16 v0, p0

    move-object/from16 v1, v110

    move/from16 v2, v17

    move/from16 v3, v276

    invoke-virtual {v0, v7, v1, v2, v3}, Landroid/app/ActivityManagerNative;->getContentProvider(Landroid/app/IApplicationThread;Ljava/lang/String;IZ)Landroid/app/IActivityManager$ContentProviderHolder;

    move-result-object v191

    .line 851
    .local v191, "cph":Landroid/app/IActivityManager$ContentProviderHolder;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 852
    if-eqz v191, :cond_39

    .line 853
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 854
    const/4 v6, 0x0

    move-object/from16 v0, v191

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/app/IActivityManager$ContentProviderHolder;->writeToParcel(Landroid/os/Parcel;I)V

    .line 858
    :goto_32
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 849
    .end local v191    # "cph":Landroid/app/IActivityManager$ContentProviderHolder;
    .end local v276    # "stable":Z
    :cond_38
    const/4 v0, 0x0

    move/16 v276, v0

    goto :goto_31

    .line 856
    .restart local v191    # "cph":Landroid/app/IActivityManager$ContentProviderHolder;
    .restart local v276    # "stable":Z
    :cond_39
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_32

    .line 862
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .end local v17    # "userId":I
    .end local v110    # "name":Ljava/lang/String;
    .end local v181    # "b":Landroid/os/IBinder;
    .end local v191    # "cph":Landroid/app/IActivityManager$ContentProviderHolder;
    .end local v276    # "stable":Z
    :pswitch_37
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 863
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v110

    .line 864
    .restart local v110    # "name":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 865
    .restart local v17    # "userId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v76

    .line 866
    .restart local v76    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v110

    move/from16 v2, v17

    move-object/from16 v3, v76

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->getContentProviderExternal(Ljava/lang/String;ILandroid/os/IBinder;)Landroid/app/IActivityManager$ContentProviderHolder;

    move-result-object v191

    .line 867
    .restart local v191    # "cph":Landroid/app/IActivityManager$ContentProviderHolder;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 868
    if-eqz v191, :cond_3a

    .line 869
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 870
    const/4 v6, 0x0

    move-object/from16 v0, v191

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/app/IActivityManager$ContentProviderHolder;->writeToParcel(Landroid/os/Parcel;I)V

    .line 874
    :goto_33
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 872
    :cond_3a
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_33

    .line 878
    .end local v17    # "userId":I
    .end local v76    # "token":Landroid/os/IBinder;
    .end local v110    # "name":Ljava/lang/String;
    .end local v191    # "cph":Landroid/app/IActivityManager$ContentProviderHolder;
    :pswitch_38
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 879
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v181

    .line 880
    .restart local v181    # "b":Landroid/os/IBinder;
    invoke-static/range {v181 .. v181}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 881
    .restart local v7    # "app":Landroid/app/IApplicationThread;
    sget-object v6, Landroid/app/IActivityManager$ContentProviderHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v255

    .line 883
    .local v255, "providers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/IActivityManager$ContentProviderHolder;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v255

    invoke-virtual {v0, v7, v1}, Landroid/app/ActivityManagerNative;->publishContentProviders(Landroid/app/IApplicationThread;Ljava/util/List;)V

    .line 884
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 885
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 889
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .end local v181    # "b":Landroid/os/IBinder;
    .end local v255    # "providers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/IActivityManager$ContentProviderHolder;>;"
    :pswitch_39
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 890
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v181

    .line 891
    .restart local v181    # "b":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v276, v0

    .line 892
    .local v276, "stable":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v290, v0

    .line 893
    .local v290, "unstable":I
    move-object/from16 v0, p0

    move-object/from16 v1, v181

    move/from16 v2, v276

    move/from16 v3, v290

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->refContentProvider(Landroid/os/IBinder;II)Z

    move-result v0

    move/16 v264, v0

    .line 894
    .local v264, "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 895
    move/from16 v0, v264

    if-eqz v0, :cond_3b

    const/4 v6, 0x1

    :goto_34
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 896
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 895
    :cond_3b
    const/4 v6, 0x0

    goto :goto_34

    .line 900
    .end local v181    # "b":Landroid/os/IBinder;
    .end local v264    # "res":Z
    .end local v276    # "stable":I
    .end local v290    # "unstable":I
    :pswitch_3a
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 901
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v181

    .line 902
    .restart local v181    # "b":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v181

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->unstableProviderDied(Landroid/os/IBinder;)V

    .line 903
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 904
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 908
    .end local v181    # "b":Landroid/os/IBinder;
    :pswitch_3b
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 909
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v181

    .line 910
    .restart local v181    # "b":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v181

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->appNotRespondingViaProvider(Landroid/os/IBinder;)V

    .line 911
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 912
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 916
    .end local v181    # "b":Landroid/os/IBinder;
    :pswitch_3c
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 917
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v181

    .line 918
    .restart local v181    # "b":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_3c

    const/4 v0, 0x1

    move/16 v276, v0

    .line 919
    .local v276, "stable":Z
    :goto_35
    move-object/from16 v0, p0

    move-object/from16 v1, v181

    move/from16 v2, v276

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->removeContentProvider(Landroid/os/IBinder;Z)V

    .line 920
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 921
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 918
    .end local v276    # "stable":Z
    :cond_3c
    const/4 v0, 0x0

    move/16 v276, v0

    goto :goto_35

    .line 925
    .end local v181    # "b":Landroid/os/IBinder;
    :pswitch_3d
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 926
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v110

    .line 927
    .restart local v110    # "name":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v76

    .line 928
    .restart local v76    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v110

    move-object/from16 v2, v76

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->removeContentProviderExternal(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 929
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 930
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 934
    .end local v76    # "token":Landroid/os/IBinder;
    .end local v110    # "name":Ljava/lang/String;
    :pswitch_3e
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 935
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v189

    check-cast v189, Landroid/content/ComponentName;

    .line 936
    .local v189, "comp":Landroid/content/ComponentName;
    move-object/from16 v0, p0

    move-object/from16 v1, v189

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getRunningServiceControlPanel(Landroid/content/ComponentName;)Landroid/app/PendingIntent;

    move-result-object v248

    .line 937
    .local v248, "pi":Landroid/app/PendingIntent;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 938
    move-object/from16 v0, v248

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Landroid/app/PendingIntent;->writePendingIntentOrNullToParcel(Landroid/app/PendingIntent;Landroid/os/Parcel;)V

    .line 939
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 943
    .end local v189    # "comp":Landroid/content/ComponentName;
    .end local v248    # "pi":Landroid/app/PendingIntent;
    :pswitch_3f
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 944
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v181

    .line 945
    .restart local v181    # "b":Landroid/os/IBinder;
    invoke-static/range {v181 .. v181}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 946
    .restart local v7    # "app":Landroid/app/IApplicationThread;
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v73

    check-cast v73, Landroid/content/Intent;

    .line 947
    .local v73, "service":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 948
    .restart local v10    # "resolvedType":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 949
    .restart local v8    # "callingPackage":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .restart local v17    # "userId":I
    move-object/from16 v71, p0

    move-object/from16 v72, v7

    move-object/from16 v74, v10

    move-object/from16 v75, v8

    move/from16 v76, v17

    .line 950
    invoke-virtual/range {v71 .. v76}, Landroid/app/ActivityManagerNative;->startService(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/ComponentName;

    move-result-object v188

    .line 951
    .restart local v188    # "cn":Landroid/content/ComponentName;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 952
    move-object/from16 v0, v188

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Landroid/content/ComponentName;->writeToParcel(Landroid/content/ComponentName;Landroid/os/Parcel;)V

    .line 953
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 957
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .end local v8    # "callingPackage":Ljava/lang/String;
    .end local v10    # "resolvedType":Ljava/lang/String;
    .end local v17    # "userId":I
    .end local v73    # "service":Landroid/content/Intent;
    .end local v181    # "b":Landroid/os/IBinder;
    .end local v188    # "cn":Landroid/content/ComponentName;
    :pswitch_40
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 958
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v181

    .line 959
    .restart local v181    # "b":Landroid/os/IBinder;
    invoke-static/range {v181 .. v181}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 960
    .restart local v7    # "app":Landroid/app/IApplicationThread;
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v73

    check-cast v73, Landroid/content/Intent;

    .line 961
    .restart local v73    # "service":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 962
    .restart local v10    # "resolvedType":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 963
    .restart local v17    # "userId":I
    move-object/from16 v0, p0

    move-object/from16 v1, v73

    move/from16 v2, v17

    invoke-virtual {v0, v7, v1, v10, v2}, Landroid/app/ActivityManagerNative;->stopService(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;I)I

    move-result v0

    move/16 v264, v0

    .line 964
    .local v264, "res":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 965
    move-object/from16 v0, p3

    move/from16 v1, v264

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 966
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 970
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .end local v10    # "resolvedType":Ljava/lang/String;
    .end local v17    # "userId":I
    .end local v73    # "service":Landroid/content/Intent;
    .end local v181    # "b":Landroid/os/IBinder;
    .end local v264    # "res":I
    :pswitch_41
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 971
    invoke-static/range {p2 .. p2}, Landroid/content/ComponentName;->readFromParcel(Landroid/os/Parcel;)Landroid/content/ComponentName;

    move-result-object v75

    .line 972
    .local v75, "className":Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v76

    .line 973
    .restart local v76    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v278, v0

    .line 974
    .local v278, "startId":I
    move-object/from16 v0, p0

    move-object/from16 v1, v75

    move-object/from16 v2, v76

    move/from16 v3, v278

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->stopServiceToken(Landroid/content/ComponentName;Landroid/os/IBinder;I)Z

    move-result v0

    move/16 v264, v0

    .line 975
    .local v264, "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 976
    move/from16 v0, v264

    if-eqz v0, :cond_3d

    const/4 v6, 0x1

    :goto_36
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 977
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 976
    :cond_3d
    const/4 v6, 0x0

    goto :goto_36

    .line 981
    .end local v75    # "className":Landroid/content/ComponentName;
    .end local v76    # "token":Landroid/os/IBinder;
    .end local v264    # "res":Z
    .end local v278    # "startId":I
    :pswitch_42
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 982
    invoke-static/range {p2 .. p2}, Landroid/content/ComponentName;->readFromParcel(Landroid/os/Parcel;)Landroid/content/ComponentName;

    move-result-object v75

    .line 983
    .restart local v75    # "className":Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v76

    .line 984
    .restart local v76    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v77

    .line 985
    .restart local v77    # "id":I
    const/16 v78, 0x0

    .line 986
    .local v78, "notification":Landroid/app/Notification;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_3e

    .line 987
    sget-object v6, Landroid/app/Notification;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v78

    .end local v78    # "notification":Landroid/app/Notification;
    check-cast v78, Landroid/app/Notification;

    .line 989
    .restart local v78    # "notification":Landroid/app/Notification;
    :cond_3e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_3f

    const/16 v79, 0x1

    .local v79, "removeNotification":Z
    :goto_37
    move-object/from16 v74, p0

    .line 990
    invoke-virtual/range {v74 .. v79}, Landroid/app/ActivityManagerNative;->setServiceForeground(Landroid/content/ComponentName;Landroid/os/IBinder;ILandroid/app/Notification;Z)V

    .line 991
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 992
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 989
    .end local v79    # "removeNotification":Z
    :cond_3f
    const/16 v79, 0x0

    goto :goto_37

    .line 996
    .end local v75    # "className":Landroid/content/ComponentName;
    .end local v76    # "token":Landroid/os/IBinder;
    .end local v77    # "id":I
    .end local v78    # "notification":Landroid/app/Notification;
    :pswitch_43
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 997
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v181

    .line 998
    .restart local v181    # "b":Landroid/os/IBinder;
    invoke-static/range {v181 .. v181}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 999
    .restart local v7    # "app":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v76

    .line 1000
    .restart local v76    # "token":Landroid/os/IBinder;
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v73

    check-cast v73, Landroid/content/Intent;

    .line 1001
    .restart local v73    # "service":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 1002
    .restart local v10    # "resolvedType":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v181

    .line 1003
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v86

    .line 1004
    .restart local v86    # "fl":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 1005
    .restart local v8    # "callingPackage":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1006
    .restart local v17    # "userId":I
    invoke-static/range {v181 .. v181}, Landroid/app/IServiceConnection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IServiceConnection;

    move-result-object v85

    .local v85, "conn":Landroid/app/IServiceConnection;
    move-object/from16 v80, p0

    move-object/from16 v81, v7

    move-object/from16 v82, v76

    move-object/from16 v83, v73

    move-object/from16 v84, v10

    move-object/from16 v87, v8

    move/from16 v88, v17

    .line 1007
    invoke-virtual/range {v80 .. v88}, Landroid/app/ActivityManagerNative;->bindService(Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/content/Intent;Ljava/lang/String;Landroid/app/IServiceConnection;ILjava/lang/String;I)I

    move-result v0

    move/16 v264, v0

    .line 1009
    .local v264, "res":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1010
    move-object/from16 v0, p3

    move/from16 v1, v264

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1011
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1015
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .end local v8    # "callingPackage":Ljava/lang/String;
    .end local v10    # "resolvedType":Ljava/lang/String;
    .end local v17    # "userId":I
    .end local v73    # "service":Landroid/content/Intent;
    .end local v76    # "token":Landroid/os/IBinder;
    .end local v85    # "conn":Landroid/app/IServiceConnection;
    .end local v86    # "fl":I
    .end local v181    # "b":Landroid/os/IBinder;
    .end local v264    # "res":I
    :pswitch_44
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1016
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v181

    .line 1017
    .restart local v181    # "b":Landroid/os/IBinder;
    invoke-static/range {v181 .. v181}, Landroid/app/IServiceConnection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IServiceConnection;

    move-result-object v85

    .line 1018
    .restart local v85    # "conn":Landroid/app/IServiceConnection;
    move-object/from16 v0, p0

    move-object/from16 v1, v85

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->unbindService(Landroid/app/IServiceConnection;)Z

    move-result v0

    move/16 v264, v0

    .line 1019
    .local v264, "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1020
    move/from16 v0, v264

    if-eqz v0, :cond_40

    const/4 v6, 0x1

    :goto_38
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1021
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1020
    :cond_40
    const/4 v6, 0x0

    goto :goto_38

    .line 1025
    .end local v85    # "conn":Landroid/app/IServiceConnection;
    .end local v181    # "b":Landroid/os/IBinder;
    .end local v264    # "res":Z
    :pswitch_45
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1026
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v76

    .line 1027
    .restart local v76    # "token":Landroid/os/IBinder;
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/Intent;

    .line 1028
    .restart local v9    # "intent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v73

    .line 1029
    .local v73, "service":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v76

    move-object/from16 v2, v73

    invoke-virtual {v0, v1, v9, v2}, Landroid/app/ActivityManagerNative;->publishService(Landroid/os/IBinder;Landroid/content/Intent;Landroid/os/IBinder;)V

    .line 1030
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1031
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1035
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v73    # "service":Landroid/os/IBinder;
    .end local v76    # "token":Landroid/os/IBinder;
    :pswitch_46
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1036
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v76

    .line 1037
    .restart local v76    # "token":Landroid/os/IBinder;
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/Intent;

    .line 1038
    .restart local v9    # "intent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_41

    const/16 v196, 0x1

    .line 1039
    .local v196, "doRebind":Z
    :goto_39
    move-object/from16 v0, p0

    move-object/from16 v1, v76

    move/from16 v2, v196

    invoke-virtual {v0, v1, v9, v2}, Landroid/app/ActivityManagerNative;->unbindFinished(Landroid/os/IBinder;Landroid/content/Intent;Z)V

    .line 1040
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1041
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1038
    .end local v196    # "doRebind":Z
    :cond_41
    const/16 v196, 0x0

    goto :goto_39

    .line 1045
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v76    # "token":Landroid/os/IBinder;
    :pswitch_47
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1046
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v76

    .line 1047
    .restart local v76    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v97

    .line 1048
    .local v97, "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v278, v0

    .line 1049
    .restart local v278    # "startId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v264, v0

    .line 1050
    .local v264, "res":I
    move-object/from16 v0, p0

    move-object/from16 v1, v76

    move/from16 v2, v97

    move/from16 v3, v278

    move/from16 v4, v264

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->serviceDoneExecuting(Landroid/os/IBinder;III)V

    .line 1051
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1052
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1056
    .end local v76    # "token":Landroid/os/IBinder;
    .end local v97    # "type":I
    .end local v264    # "res":I
    .end local v278    # "startId":I
    :pswitch_48
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1057
    invoke-static/range {p2 .. p2}, Landroid/content/ComponentName;->readFromParcel(Landroid/os/Parcel;)Landroid/content/ComponentName;

    move-result-object v75

    .line 1058
    .restart local v75    # "className":Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v89

    .line 1059
    .local v89, "profileFile":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v86

    .line 1060
    .restart local v86    # "fl":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v91

    .line 1061
    .local v91, "arguments":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v181

    .line 1062
    .restart local v181    # "b":Landroid/os/IBinder;
    invoke-static/range {v181 .. v181}, Landroid/app/IInstrumentationWatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IInstrumentationWatcher;

    move-result-object v92

    .line 1063
    .local v92, "w":Landroid/app/IInstrumentationWatcher;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v181

    .line 1064
    invoke-static/range {v181 .. v181}, Landroid/app/IUiAutomationConnection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IUiAutomationConnection;

    move-result-object v93

    .line 1065
    .local v93, "c":Landroid/app/IUiAutomationConnection;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1066
    .restart local v17    # "userId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v95

    .local v95, "abiOverride":Ljava/lang/String;
    move-object/from16 v87, p0

    move-object/from16 v88, v75

    move/from16 v90, v86

    move/from16 v94, v17

    .line 1067
    invoke-virtual/range {v87 .. v95}, Landroid/app/ActivityManagerNative;->startInstrumentation(Landroid/content/ComponentName;Ljava/lang/String;ILandroid/os/Bundle;Landroid/app/IInstrumentationWatcher;Landroid/app/IUiAutomationConnection;ILjava/lang/String;)Z

    move-result v0

    move/16 v264, v0

    .line 1069
    .local v264, "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1070
    move/from16 v0, v264

    if-eqz v0, :cond_42

    const/4 v6, 0x1

    :goto_3a
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1071
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1070
    :cond_42
    const/4 v6, 0x0

    goto :goto_3a

    .line 1076
    .end local v17    # "userId":I
    .end local v75    # "className":Landroid/content/ComponentName;
    .end local v86    # "fl":I
    .end local v89    # "profileFile":Ljava/lang/String;
    .end local v91    # "arguments":Landroid/os/Bundle;
    .end local v92    # "w":Landroid/app/IInstrumentationWatcher;
    .end local v93    # "c":Landroid/app/IUiAutomationConnection;
    .end local v95    # "abiOverride":Ljava/lang/String;
    .end local v181    # "b":Landroid/os/IBinder;
    .end local v264    # "res":Z
    :pswitch_49
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1077
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v181

    .line 1078
    .restart local v181    # "b":Landroid/os/IBinder;
    invoke-static/range {v181 .. v181}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 1079
    .restart local v7    # "app":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v53

    .line 1080
    .restart local v53    # "resultCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    move-object/16 v268, v0

    .line 1081
    .local v268, "results":Landroid/os/Bundle;
    move-object/from16 v0, p0

    move/from16 v1, v53

    move-object/from16 v2, v268

    invoke-virtual {v0, v7, v1, v2}, Landroid/app/ActivityManagerNative;->finishInstrumentation(Landroid/app/IApplicationThread;ILandroid/os/Bundle;)V

    .line 1082
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1083
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1087
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .end local v53    # "resultCode":I
    .end local v181    # "b":Landroid/os/IBinder;
    .end local v268    # "results":Landroid/os/Bundle;
    :pswitch_4a
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1088
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v39

    .line 1089
    .restart local v39    # "config":Landroid/content/res/Configuration;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1090
    const/4 v6, 0x0

    move-object/from16 v0, v39

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/res/Configuration;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1091
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1095
    .end local v39    # "config":Landroid/content/res/Configuration;
    :pswitch_4b
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1096
    sget-object v6, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Landroid/content/res/Configuration;

    .line 1097
    .restart local v39    # "config":Landroid/content/res/Configuration;
    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->updateConfiguration(Landroid/content/res/Configuration;)V

    .line 1098
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1099
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1103
    .end local v39    # "config":Landroid/content/res/Configuration;
    :pswitch_4c
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1104
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v76

    .line 1105
    .restart local v76    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v263, v0

    .line 1106
    .local v263, "requestedOrientation":I
    move-object/from16 v0, p0

    move-object/from16 v1, v76

    move/from16 v2, v263

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->setRequestedOrientation(Landroid/os/IBinder;I)V

    .line 1107
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1108
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1112
    .end local v76    # "token":Landroid/os/IBinder;
    .end local v263    # "requestedOrientation":I
    :pswitch_4d
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1113
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v76

    .line 1114
    .restart local v76    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v76

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getRequestedOrientation(Landroid/os/IBinder;)I

    move-result v0

    move/16 v261, v0

    .line 1115
    .local v261, "req":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1116
    move-object/from16 v0, p3

    move/from16 v1, v261

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1117
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1121
    .end local v76    # "token":Landroid/os/IBinder;
    .end local v261    # "req":I
    :pswitch_4e
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1122
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v76

    .line 1123
    .restart local v76    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v76

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getActivityClassForToken(Landroid/os/IBinder;)Landroid/content/ComponentName;

    move-result-object v188

    .line 1124
    .restart local v188    # "cn":Landroid/content/ComponentName;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1125
    move-object/from16 v0, v188

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Landroid/content/ComponentName;->writeToParcel(Landroid/content/ComponentName;Landroid/os/Parcel;)V

    .line 1126
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1130
    .end local v76    # "token":Landroid/os/IBinder;
    .end local v188    # "cn":Landroid/content/ComponentName;
    :pswitch_4f
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1131
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v76

    .line 1132
    .restart local v76    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1133
    move-object/from16 v0, p0

    move-object/from16 v1, v76

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getPackageForToken(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1134
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1138
    .end local v76    # "token":Landroid/os/IBinder;
    :pswitch_50
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1139
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v97

    .line 1140
    .restart local v97    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v32

    .line 1141
    .restart local v32    # "packageName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v76

    .line 1142
    .restart local v76    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 1143
    .restart local v12    # "resultWho":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 1146
    .restart local v13    # "requestCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_43

    .line 1147
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v102

    check-cast v102, [Landroid/content/Intent;

    .line 1148
    .local v102, "requestIntents":[Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v103

    .line 1153
    .local v103, "requestResolvedTypes":[Ljava/lang/String;
    :goto_3b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v86

    .line 1154
    .restart local v86    # "fl":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_44

    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Bundle;

    move-object/from16 v16, v6

    .line 1156
    .restart local v16    # "options":Landroid/os/Bundle;
    :goto_3c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .restart local v17    # "userId":I
    move-object/from16 v96, p0

    move-object/from16 v98, v32

    move-object/from16 v99, v76

    move-object/from16 v100, v12

    move/from16 v101, v13

    move/from16 v104, v86

    move-object/from16 v105, v16

    move/from16 v106, v17

    .line 1157
    invoke-virtual/range {v96 .. v106}, Landroid/app/ActivityManagerNative;->getIntentSender(ILjava/lang/String;Landroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;I)Landroid/content/IIntentSender;

    move-result-object v0

    move-object/16 v264, v0

    .line 1160
    .local v264, "res":Landroid/content/IIntentSender;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1161
    move-object/from16 v0, v264

    if-eqz v0, :cond_45

    invoke-interface/range {v264 .. v264}, Landroid/content/IIntentSender;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    :goto_3d
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1162
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1150
    .end local v16    # "options":Landroid/os/Bundle;
    .end local v17    # "userId":I
    .end local v86    # "fl":I
    .end local v102    # "requestIntents":[Landroid/content/Intent;
    .end local v103    # "requestResolvedTypes":[Ljava/lang/String;
    .end local v264    # "res":Landroid/content/IIntentSender;
    :cond_43
    const/16 v102, 0x0

    .line 1151
    .restart local v102    # "requestIntents":[Landroid/content/Intent;
    const/16 v103, 0x0

    .restart local v103    # "requestResolvedTypes":[Ljava/lang/String;
    goto :goto_3b

    .line 1154
    .restart local v86    # "fl":I
    :cond_44
    const/16 v16, 0x0

    goto :goto_3c

    .line 1161
    .restart local v16    # "options":Landroid/os/Bundle;
    .restart local v17    # "userId":I
    .restart local v264    # "res":Landroid/content/IIntentSender;
    :cond_45
    const/4 v6, 0x0

    goto :goto_3d

    .line 1166
    .end local v12    # "resultWho":Ljava/lang/String;
    .end local v13    # "requestCode":I
    .end local v16    # "options":Landroid/os/Bundle;
    .end local v17    # "userId":I
    .end local v32    # "packageName":Ljava/lang/String;
    .end local v76    # "token":Landroid/os/IBinder;
    .end local v86    # "fl":I
    .end local v97    # "type":I
    .end local v102    # "requestIntents":[Landroid/content/Intent;
    .end local v103    # "requestResolvedTypes":[Ljava/lang/String;
    .end local v264    # "res":Landroid/content/IIntentSender;
    :pswitch_51
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1167
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v0

    move-object/16 v258, v0

    .line 1169
    .local v258, "r":Landroid/content/IIntentSender;
    move-object/from16 v0, p0

    move-object/from16 v1, v258

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->cancelIntentSender(Landroid/content/IIntentSender;)V

    .line 1170
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1171
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1175
    .end local v258    # "r":Landroid/content/IIntentSender;
    :pswitch_52
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1176
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v0

    move-object/16 v258, v0

    .line 1178
    .restart local v258    # "r":Landroid/content/IIntentSender;
    move-object/from16 v0, p0

    move-object/from16 v1, v258

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getPackageForIntentSender(Landroid/content/IIntentSender;)Ljava/lang/String;

    move-result-object v0

    move-object/16 v264, v0

    .line 1179
    .local v264, "res":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1180
    move-object/from16 v0, p3

    move-object/from16 v1, v264

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1181
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1185
    .end local v258    # "r":Landroid/content/IIntentSender;
    .end local v264    # "res":Ljava/lang/String;
    :pswitch_53
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1186
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v0

    move-object/16 v258, v0

    .line 1188
    .restart local v258    # "r":Landroid/content/IIntentSender;
    move-object/from16 v0, p0

    move-object/from16 v1, v258

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getUidForIntentSender(Landroid/content/IIntentSender;)I

    move-result v0

    move/16 v264, v0

    .line 1189
    .local v264, "res":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1190
    move-object/from16 v0, p3

    move/from16 v1, v264

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1191
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1195
    .end local v258    # "r":Landroid/content/IIntentSender;
    .end local v264    # "res":I
    :pswitch_54
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1196
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v42

    .line 1197
    .restart local v42    # "callingPid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v43

    .line 1198
    .restart local v43    # "callingUid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1199
    .restart local v17    # "userId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_46

    const/16 v108, 0x1

    .line 1200
    .local v108, "allowAll":Z
    :goto_3e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_47

    const/16 v109, 0x1

    .line 1201
    .local v109, "requireFull":Z
    :goto_3f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v110

    .line 1202
    .restart local v110    # "name":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v111

    .local v111, "callerPackage":Ljava/lang/String;
    move-object/from16 v104, p0

    move/from16 v105, v42

    move/from16 v106, v43

    move/from16 v107, v17

    .line 1203
    invoke-virtual/range {v104 .. v111}, Landroid/app/ActivityManagerNative;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v0

    move/16 v264, v0

    .line 1205
    .restart local v264    # "res":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1206
    move-object/from16 v0, p3

    move/from16 v1, v264

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1207
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1199
    .end local v108    # "allowAll":Z
    .end local v109    # "requireFull":Z
    .end local v110    # "name":Ljava/lang/String;
    .end local v111    # "callerPackage":Ljava/lang/String;
    .end local v264    # "res":I
    :cond_46
    const/16 v108, 0x0

    goto :goto_3e

    .line 1200
    .restart local v108    # "allowAll":Z
    :cond_47
    const/16 v109, 0x0

    goto :goto_3f

    .line 1211
    .end local v17    # "userId":I
    .end local v42    # "callingPid":I
    .end local v43    # "callingUid":I
    .end local v108    # "allowAll":Z
    :pswitch_55
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1212
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v232

    .line 1213
    .local v232, "max":I
    move-object/from16 v0, p0

    move/from16 v1, v232

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->setProcessLimit(I)V

    .line 1214
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1215
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1219
    .end local v232    # "max":I
    :pswitch_56
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1220
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getProcessLimit()I

    move-result v220

    .line 1221
    .local v220, "limit":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1222
    move-object/from16 v0, p3

    move/from16 v1, v220

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1223
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1227
    .end local v220    # "limit":I
    :pswitch_57
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1228
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v76

    .line 1229
    .restart local v76    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v114

    .line 1230
    .local v114, "pid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_48

    const/16 v213, 0x1

    .line 1231
    .local v213, "isForeground":Z
    :goto_40
    move-object/from16 v0, p0

    move-object/from16 v1, v76

    move/from16 v2, v114

    move/from16 v3, v213

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->setProcessForeground(Landroid/os/IBinder;IZ)V

    .line 1232
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1233
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1230
    .end local v213    # "isForeground":Z
    :cond_48
    const/16 v213, 0x0

    goto :goto_40

    .line 1237
    .end local v76    # "token":Landroid/os/IBinder;
    .end local v114    # "pid":I
    :pswitch_58
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1238
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v35

    .line 1239
    .restart local v35    # "perm":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v114

    .line 1240
    .restart local v114    # "pid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v115

    .line 1241
    .local v115, "uid":I
    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move/from16 v2, v114

    move/from16 v3, v115

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    move/16 v264, v0

    .line 1242
    .restart local v264    # "res":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1243
    move-object/from16 v0, p3

    move/from16 v1, v264

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1244
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1248
    .end local v35    # "perm":Ljava/lang/String;
    .end local v114    # "pid":I
    .end local v115    # "uid":I
    .end local v264    # "res":I
    :pswitch_59
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1249
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v35

    .line 1250
    .restart local v35    # "perm":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v114

    .line 1251
    .restart local v114    # "pid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v115

    .line 1252
    .restart local v115    # "uid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v76

    .line 1253
    .restart local v76    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move/from16 v2, v114

    move/from16 v3, v115

    move-object/from16 v4, v76

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->checkPermissionWithToken(Ljava/lang/String;IILandroid/os/IBinder;)I

    move-result v0

    move/16 v264, v0

    .line 1254
    .restart local v264    # "res":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1255
    move-object/from16 v0, p3

    move/from16 v1, v264

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1256
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1260
    .end local v35    # "perm":Ljava/lang/String;
    .end local v76    # "token":Landroid/os/IBinder;
    .end local v114    # "pid":I
    .end local v115    # "uid":I
    .end local v264    # "res":I
    :pswitch_5a
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1261
    sget-object v6, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v113

    check-cast v113, Landroid/net/Uri;

    .line 1262
    .local v113, "uri":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v114

    .line 1263
    .restart local v114    # "pid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v115

    .line 1264
    .restart local v115    # "uid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v116

    .line 1265
    .local v116, "mode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1266
    .restart local v17    # "userId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v118

    .local v118, "callerToken":Landroid/os/IBinder;
    move-object/from16 v112, p0

    move/from16 v117, v17

    .line 1267
    invoke-virtual/range {v112 .. v118}, Landroid/app/ActivityManagerNative;->checkUriPermission(Landroid/net/Uri;IIIILandroid/os/IBinder;)I

    move-result v0

    move/16 v264, v0

    .line 1268
    .restart local v264    # "res":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1269
    move-object/from16 v0, p3

    move/from16 v1, v264

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1270
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1274
    .end local v17    # "userId":I
    .end local v113    # "uri":Landroid/net/Uri;
    .end local v114    # "pid":I
    .end local v115    # "uid":I
    .end local v116    # "mode":I
    .end local v118    # "callerToken":Landroid/os/IBinder;
    .end local v264    # "res":I
    :pswitch_5b
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1275
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v32

    .line 1276
    .restart local v32    # "packageName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/content/pm/IPackageDataObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageDataObserver;

    move-result-object v239

    .line 1278
    .local v239, "observer":Landroid/content/pm/IPackageDataObserver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1279
    .restart local v17    # "userId":I
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v239

    move/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;I)Z

    move-result v0

    move/16 v264, v0

    .line 1280
    .local v264, "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1281
    move/from16 v0, v264

    if-eqz v0, :cond_49

    const/4 v6, 0x1

    :goto_41
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1282
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1281
    :cond_49
    const/4 v6, 0x0

    goto :goto_41

    .line 1286
    .end local v17    # "userId":I
    .end local v32    # "packageName":Ljava/lang/String;
    .end local v239    # "observer":Landroid/content/pm/IPackageDataObserver;
    .end local v264    # "res":Z
    :pswitch_5c
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1287
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v181

    .line 1288
    .restart local v181    # "b":Landroid/os/IBinder;
    invoke-static/range {v181 .. v181}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 1289
    .restart local v7    # "app":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v121

    .line 1290
    .local v121, "targetPkg":Ljava/lang/String;
    sget-object v6, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v113

    check-cast v113, Landroid/net/Uri;

    .line 1291
    .restart local v113    # "uri":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v116

    .line 1292
    .restart local v116    # "mode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .restart local v17    # "userId":I
    move-object/from16 v119, p0

    move-object/from16 v120, v7

    move-object/from16 v122, v113

    move/from16 v123, v116

    move/from16 v124, v17

    .line 1293
    invoke-virtual/range {v119 .. v124}, Landroid/app/ActivityManagerNative;->grantUriPermission(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/net/Uri;II)V

    .line 1294
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1295
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1299
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .end local v17    # "userId":I
    .end local v113    # "uri":Landroid/net/Uri;
    .end local v116    # "mode":I
    .end local v121    # "targetPkg":Ljava/lang/String;
    .end local v181    # "b":Landroid/os/IBinder;
    :pswitch_5d
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1300
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v181

    .line 1301
    .restart local v181    # "b":Landroid/os/IBinder;
    invoke-static/range {v181 .. v181}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 1302
    .restart local v7    # "app":Landroid/app/IApplicationThread;
    sget-object v6, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v113

    check-cast v113, Landroid/net/Uri;

    .line 1303
    .restart local v113    # "uri":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v116

    .line 1304
    .restart local v116    # "mode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1305
    .restart local v17    # "userId":I
    move-object/from16 v0, p0

    move-object/from16 v1, v113

    move/from16 v2, v116

    move/from16 v3, v17

    invoke-virtual {v0, v7, v1, v2, v3}, Landroid/app/ActivityManagerNative;->revokeUriPermission(Landroid/app/IApplicationThread;Landroid/net/Uri;II)V

    .line 1306
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1307
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1311
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .end local v17    # "userId":I
    .end local v113    # "uri":Landroid/net/Uri;
    .end local v116    # "mode":I
    .end local v181    # "b":Landroid/os/IBinder;
    :pswitch_5e
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1312
    sget-object v6, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v113

    check-cast v113, Landroid/net/Uri;

    .line 1313
    .restart local v113    # "uri":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v116

    .line 1314
    .restart local v116    # "mode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1315
    .restart local v17    # "userId":I
    move-object/from16 v0, p0

    move-object/from16 v1, v113

    move/from16 v2, v116

    move/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->takePersistableUriPermission(Landroid/net/Uri;II)V

    .line 1316
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1317
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1321
    .end local v17    # "userId":I
    .end local v113    # "uri":Landroid/net/Uri;
    .end local v116    # "mode":I
    :pswitch_5f
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1322
    sget-object v6, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v113

    check-cast v113, Landroid/net/Uri;

    .line 1323
    .restart local v113    # "uri":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v116

    .line 1324
    .restart local v116    # "mode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1325
    .restart local v17    # "userId":I
    move-object/from16 v0, p0

    move-object/from16 v1, v113

    move/from16 v2, v116

    move/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->releasePersistableUriPermission(Landroid/net/Uri;II)V

    .line 1326
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1327
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1331
    .end local v17    # "userId":I
    .end local v113    # "uri":Landroid/net/Uri;
    .end local v116    # "mode":I
    :pswitch_60
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1332
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v32

    .line 1333
    .restart local v32    # "packageName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_4a

    const/16 v209, 0x1

    .line 1334
    .local v209, "incoming":Z
    :goto_42
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move/from16 v2, v209

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->getPersistedUriPermissions(Ljava/lang/String;Z)Landroid/content/pm/ParceledListSlice;

    move-result-object v245

    .line 1336
    .local v245, "perms":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/UriPermission;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1337
    const/4 v6, 0x1

    move-object/from16 v0, v245

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1338
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1333
    .end local v209    # "incoming":Z
    .end local v245    # "perms":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/UriPermission;>;"
    :cond_4a
    const/16 v209, 0x0

    goto :goto_42

    .line 1342
    .end local v32    # "packageName":Ljava/lang/String;
    :pswitch_61
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1343
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v181

    .line 1344
    .restart local v181    # "b":Landroid/os/IBinder;
    invoke-static/range {v181 .. v181}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 1345
    .restart local v7    # "app":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_4b

    const/4 v0, 0x1

    move/16 v295, v0

    .line 1346
    .local v295, "waiting":Z
    :goto_43
    move-object/from16 v0, p0

    move/from16 v1, v295

    invoke-virtual {v0, v7, v1}, Landroid/app/ActivityManagerNative;->showWaitingForDebugger(Landroid/app/IApplicationThread;Z)V

    .line 1347
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1348
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1345
    .end local v295    # "waiting":Z
    :cond_4b
    const/4 v0, 0x0

    move/16 v295, v0

    goto :goto_43

    .line 1352
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .end local v181    # "b":Landroid/os/IBinder;
    :pswitch_62
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1353
    new-instance v235, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct/range {v235 .. v235}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 1354
    .local v235, "mi":Landroid/app/ActivityManager$MemoryInfo;
    move-object/from16 v0, p0

    move-object/from16 v1, v235

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 1355
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1356
    const/4 v6, 0x0

    move-object/from16 v0, v235

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/app/ActivityManager$MemoryInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1357
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1361
    .end local v235    # "mi":Landroid/app/ActivityManager$MemoryInfo;
    :pswitch_63
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1362
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->unhandledBack()V

    .line 1363
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1364
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1368
    :pswitch_64
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1369
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v113

    .line 1370
    .restart local v113    # "uri":Landroid/net/Uri;
    move-object/from16 v0, p0

    move-object/from16 v1, v113

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->openContentUri(Landroid/net/Uri;)Landroid/os/ParcelFileDescriptor;

    move-result-object v247

    .line 1371
    .local v247, "pfd":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1372
    if-eqz v247, :cond_4c

    .line 1373
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1374
    const/4 v6, 0x1

    move-object/from16 v0, v247

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1378
    :goto_44
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1376
    :cond_4c
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_44

    .line 1382
    .end local v113    # "uri":Landroid/net/Uri;
    .end local v247    # "pfd":Landroid/os/ParcelFileDescriptor;
    :pswitch_65
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1383
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_4d

    const/4 v6, 0x1

    :goto_45
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/app/ActivityManagerNative;->setLockScreenShown(Z)V

    .line 1384
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1385
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1383
    :cond_4d
    const/4 v6, 0x0

    goto :goto_45

    .line 1389
    :pswitch_66
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1390
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v252

    .line 1391
    .local v252, "pn":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_4e

    const/4 v0, 0x1

    move/16 v297, v0

    .line 1392
    .local v297, "wfd":Z
    :goto_46
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_4f

    const/16 v244, 0x1

    .line 1393
    .local v244, "per":Z
    :goto_47
    move-object/from16 v0, p0

    move-object/from16 v1, v252

    move/from16 v2, v297

    move/from16 v3, v244

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->setDebugApp(Ljava/lang/String;ZZ)V

    .line 1394
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1395
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1391
    .end local v244    # "per":Z
    .end local v297    # "wfd":Z
    :cond_4e
    const/4 v0, 0x0

    move/16 v297, v0

    goto :goto_46

    .line 1392
    .restart local v297    # "wfd":Z
    :cond_4f
    const/16 v244, 0x0

    goto :goto_47

    .line 1399
    .end local v252    # "pn":Ljava/lang/String;
    .end local v297    # "wfd":Z
    :pswitch_67
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1400
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_50

    const/16 v198, 0x1

    .line 1401
    .local v198, "enabled":Z
    :goto_48
    move-object/from16 v0, p0

    move/from16 v1, v198

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->setAlwaysFinish(Z)V

    .line 1402
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1403
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1400
    .end local v198    # "enabled":Z
    :cond_50
    const/16 v198, 0x0

    goto :goto_48

    .line 1407
    :pswitch_68
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1408
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/app/IActivityController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IActivityController;

    move-result-object v0

    move-object/16 v296, v0

    .line 1410
    .local v296, "watcher":Landroid/app/IActivityController;
    move-object/from16 v0, p0

    move-object/from16 v1, v296

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->setActivityController(Landroid/app/IActivityController;)V

    .line 1411
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1412
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1416
    .end local v296    # "watcher":Landroid/app/IActivityController;
    :pswitch_69
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1417
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->enterSafeMode()V

    .line 1418
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1419
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1423
    :pswitch_6a
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1424
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v212

    .line 1426
    .local v212, "is":Landroid/content/IIntentSender;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v275, v0

    .line 1427
    .local v275, "sourceUid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    move-object/16 v274, v0

    .line 1428
    .local v274, "sourcePkg":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    move-object/16 v283, v0

    .line 1429
    .local v283, "tag":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v212

    move/from16 v2, v275

    move-object/from16 v3, v274

    move-object/from16 v4, v283

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->noteWakeupAlarm(Landroid/content/IIntentSender;ILjava/lang/String;Ljava/lang/String;)V

    .line 1430
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1431
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1435
    .end local v212    # "is":Landroid/content/IIntentSender;
    .end local v274    # "sourcePkg":Ljava/lang/String;
    .end local v275    # "sourceUid":I
    .end local v283    # "tag":Ljava/lang/String;
    :pswitch_6b
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1436
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v212

    .line 1438
    .restart local v212    # "is":Landroid/content/IIntentSender;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v275, v0

    .line 1439
    .restart local v275    # "sourceUid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    move-object/16 v283, v0

    .line 1440
    .restart local v283    # "tag":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v212

    move/from16 v2, v275

    move-object/from16 v3, v283

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->noteAlarmStart(Landroid/content/IIntentSender;ILjava/lang/String;)V

    .line 1441
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1442
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1446
    .end local v212    # "is":Landroid/content/IIntentSender;
    .end local v275    # "sourceUid":I
    .end local v283    # "tag":Ljava/lang/String;
    :pswitch_6c
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1447
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v212

    .line 1449
    .restart local v212    # "is":Landroid/content/IIntentSender;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v275, v0

    .line 1450
    .restart local v275    # "sourceUid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    move-object/16 v283, v0

    .line 1451
    .restart local v283    # "tag":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v212

    move/from16 v2, v275

    move-object/from16 v3, v283

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->noteAlarmFinish(Landroid/content/IIntentSender;ILjava/lang/String;)V

    .line 1452
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1453
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1457
    .end local v212    # "is":Landroid/content/IIntentSender;
    .end local v275    # "sourceUid":I
    .end local v283    # "tag":Ljava/lang/String;
    :pswitch_6d
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1458
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v249

    .line 1459
    .local v249, "pids":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    move-object/16 v259, v0

    .line 1460
    .local v259, "reason":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_51

    const/4 v0, 0x1

    move/16 v270, v0

    .line 1461
    .local v270, "secure":Z
    :goto_49
    move-object/from16 v0, p0

    move-object/from16 v1, v249

    move-object/from16 v2, v259

    move/from16 v3, v270

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->killPids([ILjava/lang/String;Z)Z

    move-result v0

    move/16 v264, v0

    .line 1462
    .restart local v264    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1463
    move/from16 v0, v264

    if-eqz v0, :cond_52

    const/4 v6, 0x1

    :goto_4a
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1464
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1460
    .end local v264    # "res":Z
    .end local v270    # "secure":Z
    :cond_51
    const/4 v0, 0x0

    move/16 v270, v0

    goto :goto_49

    .line 1463
    .restart local v264    # "res":Z
    .restart local v270    # "secure":Z
    :cond_52
    const/4 v6, 0x0

    goto :goto_4a

    .line 1468
    .end local v249    # "pids":[I
    .end local v259    # "reason":Ljava/lang/String;
    .end local v264    # "res":Z
    .end local v270    # "secure":Z
    :pswitch_6e
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1469
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    move-object/16 v259, v0

    .line 1470
    .restart local v259    # "reason":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v259

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->killProcessesBelowForeground(Ljava/lang/String;)Z

    move-result v0

    move/16 v264, v0

    .line 1471
    .restart local v264    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1472
    move/from16 v0, v264

    if-eqz v0, :cond_53

    const/4 v6, 0x1

    :goto_4b
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1473
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1472
    :cond_53
    const/4 v6, 0x0

    goto :goto_4b

    .line 1477
    .end local v259    # "reason":Ljava/lang/String;
    .end local v264    # "res":Z
    :pswitch_6f
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1478
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 1479
    .local v7, "app":Landroid/os/IBinder;
    new-instance v187, Landroid/app/ApplicationErrorReport$CrashInfo;

    move-object/from16 v0, v187

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/app/ApplicationErrorReport$CrashInfo;-><init>(Landroid/os/Parcel;)V

    .line 1480
    .local v187, "ci":Landroid/app/ApplicationErrorReport$CrashInfo;
    move-object/from16 v0, p0

    move-object/from16 v1, v187

    invoke-virtual {v0, v7, v1}, Landroid/app/ActivityManagerNative;->handleApplicationCrash(Landroid/os/IBinder;Landroid/app/ApplicationErrorReport$CrashInfo;)V

    .line 1481
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1482
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1486
    .end local v7    # "app":Landroid/os/IBinder;
    .end local v187    # "ci":Landroid/app/ApplicationErrorReport$CrashInfo;
    :pswitch_70
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1487
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 1488
    .restart local v7    # "app":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    move-object/16 v283, v0

    .line 1489
    .restart local v283    # "tag":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_54

    const/4 v0, 0x1

    move/16 v282, v0

    .line 1490
    .local v282, "system":Z
    :goto_4c
    new-instance v187, Landroid/app/ApplicationErrorReport$CrashInfo;

    move-object/from16 v0, v187

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/app/ApplicationErrorReport$CrashInfo;-><init>(Landroid/os/Parcel;)V

    .line 1491
    .restart local v187    # "ci":Landroid/app/ApplicationErrorReport$CrashInfo;
    move-object/from16 v0, p0

    move-object/from16 v1, v283

    move/from16 v2, v282

    move-object/from16 v3, v187

    invoke-virtual {v0, v7, v1, v2, v3}, Landroid/app/ActivityManagerNative;->handleApplicationWtf(Landroid/os/IBinder;Ljava/lang/String;ZLandroid/app/ApplicationErrorReport$CrashInfo;)Z

    move-result v0

    move/16 v264, v0

    .line 1492
    .restart local v264    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1493
    move/from16 v0, v264

    if-eqz v0, :cond_55

    const/4 v6, 0x1

    :goto_4d
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1494
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1489
    .end local v187    # "ci":Landroid/app/ApplicationErrorReport$CrashInfo;
    .end local v264    # "res":Z
    .end local v282    # "system":Z
    :cond_54
    const/4 v0, 0x0

    move/16 v282, v0

    goto :goto_4c

    .line 1493
    .restart local v187    # "ci":Landroid/app/ApplicationErrorReport$CrashInfo;
    .restart local v264    # "res":Z
    .restart local v282    # "system":Z
    :cond_55
    const/4 v6, 0x0

    goto :goto_4d

    .line 1498
    .end local v7    # "app":Landroid/os/IBinder;
    .end local v187    # "ci":Landroid/app/ApplicationErrorReport$CrashInfo;
    .end local v264    # "res":Z
    .end local v282    # "system":Z
    .end local v283    # "tag":Ljava/lang/String;
    :pswitch_71
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1499
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 1500
    .restart local v7    # "app":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v294, v0

    .line 1501
    .local v294, "violationMask":I
    new-instance v210, Landroid/os/StrictMode$ViolationInfo;

    move-object/from16 v0, v210

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/os/StrictMode$ViolationInfo;-><init>(Landroid/os/Parcel;)V

    .line 1502
    .local v210, "info":Landroid/os/StrictMode$ViolationInfo;
    move-object/from16 v0, p0

    move/from16 v1, v294

    move-object/from16 v2, v210

    invoke-virtual {v0, v7, v1, v2}, Landroid/app/ActivityManagerNative;->handleApplicationStrictModeViolation(Landroid/os/IBinder;ILandroid/os/StrictMode$ViolationInfo;)V

    .line 1503
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1504
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1508
    .end local v7    # "app":Landroid/os/IBinder;
    .end local v210    # "info":Landroid/os/StrictMode$ViolationInfo;
    .end local v294    # "violationMask":I
    :pswitch_72
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1509
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v272, v0

    .line 1510
    .local v272, "sig":I
    move-object/from16 v0, p0

    move/from16 v1, v272

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->signalPersistentProcesses(I)V

    .line 1511
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1512
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1516
    .end local v272    # "sig":I
    :pswitch_73
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1517
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v32

    .line 1518
    .restart local v32    # "packageName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1519
    .restart local v17    # "userId":I
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->killBackgroundProcesses(Ljava/lang/String;I)V

    .line 1520
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1521
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1525
    .end local v17    # "userId":I
    .end local v32    # "packageName":Ljava/lang/String;
    :pswitch_74
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1526
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->killAllBackgroundProcesses()V

    .line 1527
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1528
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1532
    :pswitch_75
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1533
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v32

    .line 1534
    .restart local v32    # "packageName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1535
    .restart local v17    # "userId":I
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->forceStopPackage(Ljava/lang/String;I)V

    .line 1536
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1537
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1541
    .end local v17    # "userId":I
    .end local v32    # "packageName":Ljava/lang/String;
    :pswitch_76
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1542
    new-instance v210, Landroid/app/ActivityManager$RunningAppProcessInfo;

    invoke-direct/range {v210 .. v210}, Landroid/app/ActivityManager$RunningAppProcessInfo;-><init>()V

    .line 1544
    .local v210, "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    move-object/from16 v0, p0

    move-object/from16 v1, v210

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getMyMemoryState(Landroid/app/ActivityManager$RunningAppProcessInfo;)V

    .line 1545
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1546
    const/4 v6, 0x0

    move-object/from16 v0, v210

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/app/ActivityManager$RunningAppProcessInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1547
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1551
    .end local v210    # "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :pswitch_77
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1552
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getDeviceConfigurationInfo()Landroid/content/pm/ConfigurationInfo;

    move-result-object v39

    .line 1553
    .local v39, "config":Landroid/content/pm/ConfigurationInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1554
    const/4 v6, 0x0

    move-object/from16 v0, v39

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/pm/ConfigurationInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1555
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1559
    .end local v39    # "config":Landroid/content/pm/ConfigurationInfo;
    :pswitch_78
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1560
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v123

    .line 1561
    .local v123, "process":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1562
    .restart local v17    # "userId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_56

    const/16 v125, 0x1

    .line 1563
    .local v125, "start":Z
    :goto_4e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v127

    .line 1564
    .local v127, "profileType":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_57

    sget-object v6, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ProfilerInfo;

    move-object v15, v6

    .restart local v15    # "profilerInfo":Landroid/app/ProfilerInfo;
    :goto_4f
    move-object/from16 v122, p0

    move/from16 v124, v17

    move-object/from16 v126, v15

    .line 1566
    invoke-virtual/range {v122 .. v127}, Landroid/app/ActivityManagerNative;->profileControl(Ljava/lang/String;IZLandroid/app/ProfilerInfo;I)Z

    move-result v0

    move/16 v264, v0

    .line 1567
    .restart local v264    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1568
    move/from16 v0, v264

    if-eqz v0, :cond_58

    const/4 v6, 0x1

    :goto_50
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1569
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1562
    .end local v15    # "profilerInfo":Landroid/app/ProfilerInfo;
    .end local v125    # "start":Z
    .end local v127    # "profileType":I
    .end local v264    # "res":Z
    :cond_56
    const/16 v125, 0x0

    goto :goto_4e

    .line 1564
    .restart local v125    # "start":Z
    .restart local v127    # "profileType":I
    :cond_57
    const/4 v15, 0x0

    goto :goto_4f

    .line 1568
    .restart local v15    # "profilerInfo":Landroid/app/ProfilerInfo;
    .restart local v264    # "res":Z
    :cond_58
    const/4 v6, 0x0

    goto :goto_50

    .line 1573
    .end local v15    # "profilerInfo":Landroid/app/ProfilerInfo;
    .end local v17    # "userId":I
    .end local v123    # "process":Ljava/lang/String;
    .end local v125    # "start":Z
    .end local v127    # "profileType":I
    .end local v264    # "res":Z
    :pswitch_79
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1574
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/app/ActivityManagerNative;->shutdown(I)Z

    move-result v0

    move/16 v264, v0

    .line 1575
    .restart local v264    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1576
    move/from16 v0, v264

    if-eqz v0, :cond_59

    const/4 v6, 0x1

    :goto_51
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1577
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1576
    :cond_59
    const/4 v6, 0x0

    goto :goto_51

    .line 1581
    .end local v264    # "res":Z
    :pswitch_7a
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1582
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->stopAppSwitches()V

    .line 1583
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1584
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1588
    :pswitch_7b
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1589
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->resumeAppSwitches()V

    .line 1590
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1591
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1595
    :pswitch_7c
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1596
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v73

    check-cast v73, Landroid/content/Intent;

    .line 1597
    .local v73, "service":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 1598
    .restart local v10    # "resolvedType":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 1599
    .restart local v8    # "callingPackage":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v73

    invoke-virtual {v0, v1, v10, v8}, Landroid/app/ActivityManagerNative;->peekService(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v183

    .line 1600
    .local v183, "binder":Landroid/os/IBinder;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1601
    move-object/from16 v0, p3

    move-object/from16 v1, v183

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1602
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1606
    .end local v8    # "callingPackage":Ljava/lang/String;
    .end local v10    # "resolvedType":Ljava/lang/String;
    .end local v73    # "service":Landroid/content/Intent;
    .end local v183    # "binder":Landroid/os/IBinder;
    :pswitch_7d
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1607
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v32

    .line 1608
    .restart local v32    # "packageName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v182

    .line 1609
    .local v182, "backupRestoreMode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1610
    .restart local v17    # "userId":I
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move/from16 v2, v182

    move/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->bindBackupAgent(Ljava/lang/String;II)Z

    move-result v0

    move/16 v281, v0

    .line 1611
    .local v281, "success":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1612
    move/from16 v0, v281

    if-eqz v0, :cond_5a

    const/4 v6, 0x1

    :goto_52
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1613
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1612
    :cond_5a
    const/4 v6, 0x0

    goto :goto_52

    .line 1617
    .end local v17    # "userId":I
    .end local v32    # "packageName":Ljava/lang/String;
    .end local v182    # "backupRestoreMode":I
    .end local v281    # "success":Z
    :pswitch_7e
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1618
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v32

    .line 1619
    .restart local v32    # "packageName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v174

    .line 1620
    .local v174, "agent":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v174

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->backupAgentCreated(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1621
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1622
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1626
    .end local v32    # "packageName":Ljava/lang/String;
    .end local v174    # "agent":Landroid/os/IBinder;
    :pswitch_7f
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1627
    sget-object v6, Landroid/content/pm/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v210

    check-cast v210, Landroid/content/pm/ApplicationInfo;

    .line 1628
    .local v210, "info":Landroid/content/pm/ApplicationInfo;
    move-object/from16 v0, p0

    move-object/from16 v1, v210

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->unbindBackupAgent(Landroid/content/pm/ApplicationInfo;)V

    .line 1629
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1630
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1634
    .end local v210    # "info":Landroid/content/pm/ApplicationInfo;
    :pswitch_80
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1635
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v32

    .line 1636
    .restart local v32    # "packageName":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->addPackageDependency(Ljava/lang/String;)V

    .line 1637
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1638
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1642
    .end local v32    # "packageName":Ljava/lang/String;
    :pswitch_81
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1643
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v250

    .line 1644
    .local v250, "pkg":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v178

    .line 1645
    .local v178, "appid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    move-object/16 v259, v0

    .line 1646
    .restart local v259    # "reason":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v250

    move/from16 v2, v178

    move-object/from16 v3, v259

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->killApplicationWithAppId(Ljava/lang/String;ILjava/lang/String;)V

    .line 1647
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1648
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1652
    .end local v178    # "appid":I
    .end local v250    # "pkg":Ljava/lang/String;
    .end local v259    # "reason":Ljava/lang/String;
    :pswitch_82
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1653
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    move-object/16 v259, v0

    .line 1654
    .restart local v259    # "reason":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v259

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->closeSystemDialogs(Ljava/lang/String;)V

    .line 1655
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1656
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1660
    .end local v259    # "reason":Ljava/lang/String;
    :pswitch_83
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1661
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v249

    .line 1662
    .restart local v249    # "pids":[I
    move-object/from16 v0, p0

    move-object/from16 v1, v249

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getProcessMemoryInfo([I)[Landroid/os/Debug$MemoryInfo;

    move-result-object v0

    move-object/16 v264, v0

    .line 1663
    .local v264, "res":[Landroid/os/Debug$MemoryInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1664
    const/4 v6, 0x1

    move-object/from16 v0, p3

    move-object/from16 v1, v264

    invoke-virtual {v0, v1, v6}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 1665
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1669
    .end local v249    # "pids":[I
    .end local v264    # "res":[Landroid/os/Debug$MemoryInfo;
    :pswitch_84
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1670
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v254

    .line 1671
    .local v254, "processName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v115

    .line 1672
    .restart local v115    # "uid":I
    move-object/from16 v0, p0

    move-object/from16 v1, v254

    move/from16 v2, v115

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->killApplicationProcess(Ljava/lang/String;I)V

    .line 1673
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1674
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1678
    .end local v115    # "uid":I
    .end local v254    # "processName":Ljava/lang/String;
    :pswitch_85
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1679
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v76

    .line 1680
    .restart local v76    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v32

    .line 1681
    .restart local v32    # "packageName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v199

    .line 1682
    .local v199, "enterAnim":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v200

    .line 1683
    .local v200, "exitAnim":I
    move-object/from16 v0, p0

    move-object/from16 v1, v76

    move-object/from16 v2, v32

    move/from16 v3, v199

    move/from16 v4, v200

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->overridePendingTransition(Landroid/os/IBinder;Ljava/lang/String;II)V

    .line 1684
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1685
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1689
    .end local v32    # "packageName":Ljava/lang/String;
    .end local v76    # "token":Landroid/os/IBinder;
    .end local v199    # "enterAnim":I
    .end local v200    # "exitAnim":I
    :pswitch_86
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1690
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->isUserAMonkey()Z

    move-result v179

    .line 1691
    .local v179, "areThey":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1692
    if-eqz v179, :cond_5b

    const/4 v6, 0x1

    :goto_53
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1693
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1692
    :cond_5b
    const/4 v6, 0x0

    goto :goto_53

    .line 1697
    .end local v179    # "areThey":Z
    :pswitch_87
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1698
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v6, v0, :cond_5c

    const/16 v236, 0x1

    .line 1699
    .local v236, "monkey":Z
    :goto_54
    move-object/from16 v0, p0

    move/from16 v1, v236

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->setUserIsMonkey(Z)V

    .line 1700
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1701
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1698
    .end local v236    # "monkey":Z
    :cond_5c
    const/16 v236, 0x0

    goto :goto_54

    .line 1705
    :pswitch_88
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1706
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->finishHeavyWeightApp()V

    .line 1707
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1708
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1712
    :pswitch_89
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1713
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v76

    .line 1714
    .restart local v76    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v76

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->isImmersive(Landroid/os/IBinder;)Z

    move-result v217

    .line 1715
    .local v217, "isit":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1716
    if-eqz v217, :cond_5d

    const/4 v6, 0x1

    :goto_55
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1717
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1716
    :cond_5d
    const/4 v6, 0x0

    goto :goto_55

    .line 1721
    .end local v76    # "token":Landroid/os/IBinder;
    .end local v217    # "isit":Z
    :pswitch_8a
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1722
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v76

    .line 1723
    .restart local v76    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v76

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->isTopOfTask(Landroid/os/IBinder;)Z

    move-result v216

    .line 1724
    .local v216, "isTopOfTask":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1725
    if-eqz v216, :cond_5e

    const/4 v6, 0x1

    :goto_56
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1726
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1725
    :cond_5e
    const/4 v6, 0x0

    goto :goto_56

    .line 1730
    .end local v76    # "token":Landroid/os/IBinder;
    .end local v216    # "isTopOfTask":Z
    :pswitch_8b
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1731
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v76

    .line 1732
    .restart local v76    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v76

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->convertFromTranslucent(Landroid/os/IBinder;)Z

    move-result v190

    .line 1733
    .local v190, "converted":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1734
    if-eqz v190, :cond_5f

    const/4 v6, 0x1

    :goto_57
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1735
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1734
    :cond_5f
    const/4 v6, 0x0

    goto :goto_57

    .line 1739
    .end local v76    # "token":Landroid/os/IBinder;
    .end local v190    # "converted":Z
    :pswitch_8c
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1740
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v76

    .line 1742
    .restart local v76    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-nez v6, :cond_60

    .line 1743
    const/16 v184, 0x0

    .line 1747
    .local v184, "bundle":Landroid/os/Bundle;
    :goto_58
    if-nez v184, :cond_61

    const/16 v16, 0x0

    .line 1748
    .local v16, "options":Landroid/app/ActivityOptions;
    :goto_59
    move-object/from16 v0, p0

    move-object/from16 v1, v76

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->convertToTranslucent(Landroid/os/IBinder;Landroid/app/ActivityOptions;)Z

    move-result v190

    .line 1749
    .restart local v190    # "converted":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1750
    if-eqz v190, :cond_62

    const/4 v6, 0x1

    :goto_5a
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1751
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1745
    .end local v16    # "options":Landroid/app/ActivityOptions;
    .end local v184    # "bundle":Landroid/os/Bundle;
    .end local v190    # "converted":Z
    :cond_60
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v184

    .restart local v184    # "bundle":Landroid/os/Bundle;
    goto :goto_58

    .line 1747
    :cond_61
    new-instance v16, Landroid/app/ActivityOptions;

    move-object/from16 v0, v16

    move-object/from16 v1, v184

    invoke-direct {v0, v1}, Landroid/app/ActivityOptions;-><init>(Landroid/os/Bundle;)V

    goto :goto_59

    .line 1750
    .restart local v16    # "options":Landroid/app/ActivityOptions;
    .restart local v190    # "converted":Z
    :cond_62
    const/4 v6, 0x0

    goto :goto_5a

    .line 1755
    .end local v16    # "options":Landroid/app/ActivityOptions;
    .end local v76    # "token":Landroid/os/IBinder;
    .end local v184    # "bundle":Landroid/os/Bundle;
    .end local v190    # "converted":Z
    :pswitch_8d
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1756
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v76

    .line 1757
    .restart local v76    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v76

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getActivityOptions(Landroid/os/IBinder;)Landroid/app/ActivityOptions;

    move-result-object v16

    .line 1758
    .restart local v16    # "options":Landroid/app/ActivityOptions;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1759
    if-nez v16, :cond_63

    const/4 v6, 0x0

    :goto_5b
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 1760
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1759
    :cond_63
    invoke-virtual/range {v16 .. v16}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v6

    goto :goto_5b

    .line 1764
    .end local v16    # "options":Landroid/app/ActivityOptions;
    .end local v76    # "token":Landroid/os/IBinder;
    :pswitch_8e
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1765
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v76

    .line 1766
    .restart local v76    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v6, v0, :cond_64

    const/16 v208, 0x1

    .line 1767
    .local v208, "imm":Z
    :goto_5c
    move-object/from16 v0, p0

    move-object/from16 v1, v76

    move/from16 v2, v208

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->setImmersive(Landroid/os/IBinder;Z)V

    .line 1768
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1769
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1766
    .end local v208    # "imm":Z
    :cond_64
    const/16 v208, 0x0

    goto :goto_5c

    .line 1773
    .end local v76    # "token":Landroid/os/IBinder;
    :pswitch_8f
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1774
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->isTopActivityImmersive()Z

    move-result v217

    .line 1775
    .restart local v217    # "isit":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1776
    if-eqz v217, :cond_65

    const/4 v6, 0x1

    :goto_5d
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1777
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1776
    :cond_65
    const/4 v6, 0x0

    goto :goto_5d

    .line 1781
    .end local v217    # "isit":Z
    :pswitch_90
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1782
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v115

    .line 1783
    .restart local v115    # "uid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v211

    .line 1784
    .local v211, "initialPid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v32

    .line 1785
    .restart local v32    # "packageName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v234

    .line 1786
    .local v234, "message":Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, v115

    move/from16 v2, v211

    move-object/from16 v3, v32

    move-object/from16 v4, v234

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->crashApplication(IILjava/lang/String;Ljava/lang/String;)V

    .line 1787
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1788
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1792
    .end local v32    # "packageName":Ljava/lang/String;
    .end local v115    # "uid":I
    .end local v211    # "initialPid":I
    .end local v234    # "message":Ljava/lang/String;
    :pswitch_91
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1793
    sget-object v6, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v113

    check-cast v113, Landroid/net/Uri;

    .line 1794
    .restart local v113    # "uri":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1795
    .restart local v17    # "userId":I
    move-object/from16 v0, p0

    move-object/from16 v1, v113

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->getProviderMimeType(Landroid/net/Uri;I)Ljava/lang/String;

    move-result-object v97

    .line 1796
    .local v97, "type":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1797
    move-object/from16 v0, p3

    move-object/from16 v1, v97

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1798
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1802
    .end local v17    # "userId":I
    .end local v97    # "type":Ljava/lang/String;
    .end local v113    # "uri":Landroid/net/Uri;
    :pswitch_92
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1803
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v110

    .line 1804
    .restart local v110    # "name":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v110

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->newUriPermissionOwner(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v35

    .line 1805
    .local v35, "perm":Landroid/os/IBinder;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1806
    move-object/from16 v0, p3

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1807
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1811
    .end local v35    # "perm":Landroid/os/IBinder;
    .end local v110    # "name":Ljava/lang/String;
    :pswitch_93
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1812
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v129

    .line 1813
    .local v129, "owner":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v130

    .line 1814
    .local v130, "fromUid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v121

    .line 1815
    .restart local v121    # "targetPkg":Ljava/lang/String;
    sget-object v6, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v113

    check-cast v113, Landroid/net/Uri;

    .line 1816
    .restart local v113    # "uri":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v116

    .line 1817
    .restart local v116    # "mode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v134

    .line 1818
    .local v134, "sourceUserId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v135

    .local v135, "targetUserId":I
    move-object/from16 v128, p0

    move-object/from16 v131, v121

    move-object/from16 v132, v113

    move/from16 v133, v116

    .line 1819
    invoke-virtual/range {v128 .. v135}, Landroid/app/ActivityManagerNative;->grantUriPermissionFromOwner(Landroid/os/IBinder;ILjava/lang/String;Landroid/net/Uri;III)V

    .line 1821
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1822
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1826
    .end local v113    # "uri":Landroid/net/Uri;
    .end local v116    # "mode":I
    .end local v121    # "targetPkg":Ljava/lang/String;
    .end local v129    # "owner":Landroid/os/IBinder;
    .end local v130    # "fromUid":I
    .end local v134    # "sourceUserId":I
    .end local v135    # "targetUserId":I
    :pswitch_94
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1827
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v129

    .line 1828
    .restart local v129    # "owner":Landroid/os/IBinder;
    const/16 v113, 0x0

    .line 1829
    .restart local v113    # "uri":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_66

    .line 1830
    sget-object v6, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v113

    .end local v113    # "uri":Landroid/net/Uri;
    check-cast v113, Landroid/net/Uri;

    .line 1832
    .restart local v113    # "uri":Landroid/net/Uri;
    :cond_66
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v116

    .line 1833
    .restart local v116    # "mode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1834
    .restart local v17    # "userId":I
    move-object/from16 v0, p0

    move-object/from16 v1, v129

    move-object/from16 v2, v113

    move/from16 v3, v116

    move/from16 v4, v17

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->revokeUriPermissionFromOwner(Landroid/os/IBinder;Landroid/net/Uri;II)V

    .line 1835
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1836
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1840
    .end local v17    # "userId":I
    .end local v113    # "uri":Landroid/net/Uri;
    .end local v116    # "mode":I
    .end local v129    # "owner":Landroid/os/IBinder;
    :pswitch_95
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1841
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v43

    .line 1842
    .restart local v43    # "callingUid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v121

    .line 1843
    .restart local v121    # "targetPkg":Ljava/lang/String;
    sget-object v6, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v113

    check-cast v113, Landroid/net/Uri;

    .line 1844
    .restart local v113    # "uri":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v140

    .line 1845
    .local v140, "modeFlags":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .restart local v17    # "userId":I
    move-object/from16 v136, p0

    move/from16 v137, v43

    move-object/from16 v138, v121

    move-object/from16 v139, v113

    move/from16 v141, v17

    .line 1846
    invoke-virtual/range {v136 .. v141}, Landroid/app/ActivityManagerNative;->checkGrantUriPermission(ILjava/lang/String;Landroid/net/Uri;II)I

    move-result v0

    move/16 v264, v0

    .line 1847
    .local v264, "res":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1848
    move-object/from16 v0, p3

    move/from16 v1, v264

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1849
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1853
    .end local v17    # "userId":I
    .end local v43    # "callingUid":I
    .end local v113    # "uri":Landroid/net/Uri;
    .end local v121    # "targetPkg":Ljava/lang/String;
    .end local v140    # "modeFlags":I
    .end local v264    # "res":I
    :pswitch_96
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1854
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v123

    .line 1855
    .restart local v123    # "process":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1856
    .restart local v17    # "userId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_67

    const/16 v144, 0x1

    .line 1857
    .local v144, "managed":Z
    :goto_5e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v145

    .line 1858
    .local v145, "path":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_68

    sget-object v6, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/ParcelFileDescriptor;

    move-object/from16 v146, v6

    .local v146, "fd":Landroid/os/ParcelFileDescriptor;
    :goto_5f
    move-object/from16 v141, p0

    move-object/from16 v142, v123

    move/from16 v143, v17

    .line 1860
    invoke-virtual/range {v141 .. v146}, Landroid/app/ActivityManagerNative;->dumpHeap(Ljava/lang/String;IZLjava/lang/String;Landroid/os/ParcelFileDescriptor;)Z

    move-result v0

    move/16 v264, v0

    .line 1861
    .local v264, "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1862
    move/from16 v0, v264

    if-eqz v0, :cond_69

    const/4 v6, 0x1

    :goto_60
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1863
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1856
    .end local v144    # "managed":Z
    .end local v145    # "path":Ljava/lang/String;
    .end local v146    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v264    # "res":Z
    :cond_67
    const/16 v144, 0x0

    goto :goto_5e

    .line 1858
    .restart local v144    # "managed":Z
    .restart local v145    # "path":Ljava/lang/String;
    :cond_68
    const/16 v146, 0x0

    goto :goto_5f

    .line 1862
    .restart local v146    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local v264    # "res":Z
    :cond_69
    const/4 v6, 0x0

    goto :goto_60

    .line 1868
    .end local v17    # "userId":I
    .end local v123    # "process":Ljava/lang/String;
    .end local v144    # "managed":Z
    .end local v145    # "path":Ljava/lang/String;
    .end local v146    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v264    # "res":Z
    :pswitch_97
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1869
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v181

    .line 1870
    .restart local v181    # "b":Landroid/os/IBinder;
    invoke-static/range {v181 .. v181}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 1871
    .local v7, "app":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 1872
    .restart local v8    # "callingPackage":Ljava/lang/String;
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v150

    check-cast v150, [Landroid/content/Intent;

    .line 1873
    .local v150, "intents":[Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v151

    .line 1874
    .local v151, "resolvedTypes":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v11

    .line 1875
    .local v11, "resultTo":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_6a

    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Bundle;

    move-object/from16 v16, v6

    .line 1877
    .local v16, "options":Landroid/os/Bundle;
    :goto_61
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .restart local v17    # "userId":I
    move-object/from16 v147, p0

    move-object/from16 v148, v7

    move-object/from16 v149, v8

    move-object/from16 v152, v11

    move-object/from16 v153, v16

    move/from16 v154, v17

    .line 1878
    invoke-virtual/range {v147 .. v154}, Landroid/app/ActivityManagerNative;->startActivities(Landroid/app/IApplicationThread;Ljava/lang/String;[Landroid/content/Intent;[Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;I)I

    move-result v0

    move/16 v267, v0

    .line 1880
    .restart local v267    # "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1881
    move-object/from16 v0, p3

    move/from16 v1, v267

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1882
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1875
    .end local v16    # "options":Landroid/os/Bundle;
    .end local v17    # "userId":I
    .end local v267    # "result":I
    :cond_6a
    const/16 v16, 0x0

    goto :goto_61

    .line 1887
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .end local v8    # "callingPackage":Ljava/lang/String;
    .end local v11    # "resultTo":Landroid/os/IBinder;
    .end local v150    # "intents":[Landroid/content/Intent;
    .end local v151    # "resolvedTypes":[Ljava/lang/String;
    .end local v181    # "b":Landroid/os/IBinder;
    :pswitch_98
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1888
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getFrontActivityScreenCompatMode()I

    move-result v116

    .line 1889
    .restart local v116    # "mode":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1890
    move-object/from16 v0, p3

    move/from16 v1, v116

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1891
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1896
    .end local v116    # "mode":I
    :pswitch_99
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1897
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v116

    .line 1898
    .restart local v116    # "mode":I
    move-object/from16 v0, p0

    move/from16 v1, v116

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->setFrontActivityScreenCompatMode(I)V

    .line 1899
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1900
    move-object/from16 v0, p3

    move/from16 v1, v116

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1901
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1906
    .end local v116    # "mode":I
    :pswitch_9a
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1907
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v250

    .line 1908
    .restart local v250    # "pkg":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v250

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getPackageScreenCompatMode(Ljava/lang/String;)I

    move-result v116

    .line 1909
    .restart local v116    # "mode":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1910
    move-object/from16 v0, p3

    move/from16 v1, v116

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1911
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1916
    .end local v116    # "mode":I
    .end local v250    # "pkg":Ljava/lang/String;
    :pswitch_9b
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1917
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v250

    .line 1918
    .restart local v250    # "pkg":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v116

    .line 1919
    .restart local v116    # "mode":I
    move-object/from16 v0, p0

    move-object/from16 v1, v250

    move/from16 v2, v116

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->setPackageScreenCompatMode(Ljava/lang/String;I)V

    .line 1920
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1921
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1925
    .end local v116    # "mode":I
    .end local v250    # "pkg":Ljava/lang/String;
    :pswitch_9c
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1926
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v292, v0

    .line 1927
    .local v292, "userid":I
    move-object/from16 v0, p0

    move/from16 v1, v292

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->switchUser(I)Z

    move-result v0

    move/16 v267, v0

    .line 1928
    .local v267, "result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1929
    move/from16 v0, v267

    if-eqz v0, :cond_6b

    const/4 v6, 0x1

    :goto_62
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1930
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1929
    :cond_6b
    const/4 v6, 0x0

    goto :goto_62

    .line 1934
    .end local v267    # "result":Z
    .end local v292    # "userid":I
    :pswitch_9d
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1935
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v292, v0

    .line 1936
    .restart local v292    # "userid":I
    move-object/from16 v0, p0

    move/from16 v1, v292

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->startUserInBackground(I)Z

    move-result v0

    move/16 v267, v0

    .line 1937
    .restart local v267    # "result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1938
    move/from16 v0, v267

    if-eqz v0, :cond_6c

    const/4 v6, 0x1

    :goto_63
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1939
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1938
    :cond_6c
    const/4 v6, 0x0

    goto :goto_63

    .line 1943
    .end local v267    # "result":Z
    .end local v292    # "userid":I
    :pswitch_9e
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1944
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v292, v0

    .line 1945
    .restart local v292    # "userid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/app/IStopUserCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IStopUserCallback;

    move-result-object v185

    .line 1947
    .local v185, "callback":Landroid/app/IStopUserCallback;
    move-object/from16 v0, p0

    move/from16 v1, v292

    move-object/from16 v2, v185

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->stopUser(ILandroid/app/IStopUserCallback;)I

    move-result v0

    move/16 v267, v0

    .line 1948
    .local v267, "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1949
    move-object/from16 v0, p3

    move/from16 v1, v267

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1950
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1954
    .end local v185    # "callback":Landroid/app/IStopUserCallback;
    .end local v267    # "result":I
    .end local v292    # "userid":I
    :pswitch_9f
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1955
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v0

    move-object/16 v291, v0

    .line 1956
    .local v291, "userInfo":Landroid/content/pm/UserInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1957
    const/4 v6, 0x0

    move-object/from16 v0, v291

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/pm/UserInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1958
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1962
    .end local v291    # "userInfo":Landroid/content/pm/UserInfo;
    :pswitch_a0
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1963
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v292, v0

    .line 1964
    .restart local v292    # "userid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_6d

    const/16 v241, 0x1

    .line 1965
    .local v241, "orStopping":Z
    :goto_64
    move-object/from16 v0, p0

    move/from16 v1, v292

    move/from16 v2, v241

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->isUserRunning(IZ)Z

    move-result v0

    move/16 v267, v0

    .line 1966
    .local v267, "result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1967
    move/from16 v0, v267

    if-eqz v0, :cond_6e

    const/4 v6, 0x1

    :goto_65
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1968
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1964
    .end local v241    # "orStopping":Z
    .end local v267    # "result":Z
    :cond_6d
    const/16 v241, 0x0

    goto :goto_64

    .line 1967
    .restart local v241    # "orStopping":Z
    .restart local v267    # "result":Z
    :cond_6e
    const/4 v6, 0x0

    goto :goto_65

    .line 1972
    .end local v241    # "orStopping":Z
    .end local v267    # "result":Z
    .end local v292    # "userid":I
    :pswitch_a1
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1973
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getRunningUserIds()[I

    move-result-object v0

    move-object/16 v267, v0

    .line 1974
    .local v267, "result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1975
    move-object/from16 v0, p3

    move-object/from16 v1, v267

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 1976
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1981
    .end local v267    # "result":[I
    :pswitch_a2
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1982
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v286, v0

    .line 1983
    .restart local v286    # "taskId":I
    move-object/from16 v0, p0

    move/from16 v1, v286

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->removeTask(I)Z

    move-result v0

    move/16 v267, v0

    .line 1984
    .local v267, "result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1985
    move/from16 v0, v267

    if-eqz v0, :cond_6f

    const/4 v6, 0x1

    :goto_66
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1986
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1985
    :cond_6f
    const/4 v6, 0x0

    goto :goto_66

    .line 1990
    .end local v267    # "result":Z
    .end local v286    # "taskId":I
    :pswitch_a3
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1991
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/app/IProcessObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IProcessObserver;

    move-result-object v239

    .line 1993
    .local v239, "observer":Landroid/app/IProcessObserver;
    move-object/from16 v0, p0

    move-object/from16 v1, v239

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->registerProcessObserver(Landroid/app/IProcessObserver;)V

    .line 1994
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1998
    .end local v239    # "observer":Landroid/app/IProcessObserver;
    :pswitch_a4
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1999
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/app/IProcessObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IProcessObserver;

    move-result-object v239

    .line 2001
    .restart local v239    # "observer":Landroid/app/IProcessObserver;
    move-object/from16 v0, p0

    move-object/from16 v1, v239

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->unregisterProcessObserver(Landroid/app/IProcessObserver;)V

    .line 2002
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2006
    .end local v239    # "observer":Landroid/app/IProcessObserver;
    :pswitch_a5
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2007
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/app/IUidObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IUidObserver;

    move-result-object v239

    .line 2009
    .local v239, "observer":Landroid/app/IUidObserver;
    move-object/from16 v0, p0

    move-object/from16 v1, v239

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->registerUidObserver(Landroid/app/IUidObserver;)V

    .line 2010
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2014
    .end local v239    # "observer":Landroid/app/IUidObserver;
    :pswitch_a6
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2015
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/app/IUidObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IUidObserver;

    move-result-object v239

    .line 2017
    .restart local v239    # "observer":Landroid/app/IUidObserver;
    move-object/from16 v0, p0

    move-object/from16 v1, v239

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->unregisterUidObserver(Landroid/app/IUidObserver;)V

    .line 2018
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2023
    .end local v239    # "observer":Landroid/app/IUidObserver;
    :pswitch_a7
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2024
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v250

    .line 2025
    .restart local v250    # "pkg":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v250

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getPackageAskScreenCompat(Ljava/lang/String;)Z

    move-result v180

    .line 2026
    .local v180, "ask":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2027
    if-eqz v180, :cond_70

    const/4 v6, 0x1

    :goto_67
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2028
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2027
    :cond_70
    const/4 v6, 0x0

    goto :goto_67

    .line 2033
    .end local v180    # "ask":Z
    .end local v250    # "pkg":Ljava/lang/String;
    :pswitch_a8
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2034
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v250

    .line 2035
    .restart local v250    # "pkg":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_71

    const/16 v180, 0x1

    .line 2036
    .restart local v180    # "ask":Z
    :goto_68
    move-object/from16 v0, p0

    move-object/from16 v1, v250

    move/from16 v2, v180

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->setPackageAskScreenCompat(Ljava/lang/String;Z)V

    .line 2037
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2038
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2035
    .end local v180    # "ask":Z
    :cond_71
    const/16 v180, 0x0

    goto :goto_68

    .line 2042
    .end local v250    # "pkg":Ljava/lang/String;
    :pswitch_a9
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2043
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v0

    move-object/16 v258, v0

    .line 2045
    .restart local v258    # "r":Landroid/content/IIntentSender;
    move-object/from16 v0, p0

    move-object/from16 v1, v258

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->isIntentSenderTargetedToPackage(Landroid/content/IIntentSender;)Z

    move-result v0

    move/16 v264, v0

    .line 2046
    .restart local v264    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2047
    move/from16 v0, v264

    if-eqz v0, :cond_72

    const/4 v6, 0x1

    :goto_69
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2048
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2047
    :cond_72
    const/4 v6, 0x0

    goto :goto_69

    .line 2052
    .end local v258    # "r":Landroid/content/IIntentSender;
    .end local v264    # "res":Z
    :pswitch_aa
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2053
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v0

    move-object/16 v258, v0

    .line 2055
    .restart local v258    # "r":Landroid/content/IIntentSender;
    move-object/from16 v0, p0

    move-object/from16 v1, v258

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->isIntentSenderAnActivity(Landroid/content/IIntentSender;)Z

    move-result v0

    move/16 v264, v0

    .line 2056
    .restart local v264    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2057
    move/from16 v0, v264

    if-eqz v0, :cond_73

    const/4 v6, 0x1

    :goto_6a
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2058
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2057
    :cond_73
    const/4 v6, 0x0

    goto :goto_6a

    .line 2062
    .end local v258    # "r":Landroid/content/IIntentSender;
    .end local v264    # "res":Z
    :pswitch_ab
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2063
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v0

    move-object/16 v258, v0

    .line 2065
    .restart local v258    # "r":Landroid/content/IIntentSender;
    move-object/from16 v0, p0

    move-object/from16 v1, v258

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getIntentForIntentSender(Landroid/content/IIntentSender;)Landroid/content/Intent;

    move-result-object v9

    .line 2066
    .restart local v9    # "intent":Landroid/content/Intent;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2067
    if-eqz v9, :cond_74

    .line 2068
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2069
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v9, v0, v6}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2073
    :goto_6b
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2071
    :cond_74
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_6b

    .line 2077
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v258    # "r":Landroid/content/IIntentSender;
    :pswitch_ac
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2078
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v0

    move-object/16 v258, v0

    .line 2080
    .restart local v258    # "r":Landroid/content/IIntentSender;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v253

    .line 2081
    .local v253, "prefix":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v258

    move-object/from16 v2, v253

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->getTagForIntentSender(Landroid/content/IIntentSender;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/16 v283, v0

    .line 2082
    .restart local v283    # "tag":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2083
    move-object/from16 v0, p3

    move-object/from16 v1, v283

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2084
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2088
    .end local v253    # "prefix":Ljava/lang/String;
    .end local v258    # "r":Landroid/content/IIntentSender;
    .end local v283    # "tag":Ljava/lang/String;
    :pswitch_ad
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2089
    sget-object v6, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Landroid/content/res/Configuration;

    .line 2090
    .local v39, "config":Landroid/content/res/Configuration;
    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->updatePersistentConfiguration(Landroid/content/res/Configuration;)V

    .line 2091
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2092
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2096
    .end local v39    # "config":Landroid/content/res/Configuration;
    :pswitch_ae
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2097
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v249

    .line 2098
    .restart local v249    # "pids":[I
    move-object/from16 v0, p0

    move-object/from16 v1, v249

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getProcessPss([I)[J

    move-result-object v0

    move-object/16 v257, v0

    .line 2099
    .local v257, "pss":[J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2100
    move-object/from16 v0, p3

    move-object/from16 v1, v257

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 2101
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2105
    .end local v249    # "pids":[I
    .end local v257    # "pss":[J
    :pswitch_af
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2106
    sget-object v6, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v237

    check-cast v237, Ljava/lang/CharSequence;

    .line 2107
    .local v237, "msg":Ljava/lang/CharSequence;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_75

    const/16 v176, 0x1

    .line 2108
    .local v176, "always":Z
    :goto_6c
    move-object/from16 v0, p0

    move-object/from16 v1, v237

    move/from16 v2, v176

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->showBootMessage(Ljava/lang/CharSequence;Z)V

    .line 2109
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2110
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2107
    .end local v176    # "always":Z
    :cond_75
    const/16 v176, 0x0

    goto :goto_6c

    .line 2114
    .end local v237    # "msg":Ljava/lang/CharSequence;
    :pswitch_b0
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2115
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->keyguardWaitingForActivityDrawn()V

    .line 2116
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2117
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2121
    :pswitch_b1
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2122
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_76

    const/4 v6, 0x1

    :goto_6d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    if-eqz v18, :cond_77

    const/16 v18, 0x1

    :goto_6e
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v6, v1}, Landroid/app/ActivityManagerNative;->keyguardGoingAway(ZZ)V

    .line 2123
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2124
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2122
    :cond_76
    const/4 v6, 0x0

    goto :goto_6d

    :cond_77
    const/16 v18, 0x0

    goto :goto_6e

    .line 2129
    :pswitch_b2
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2130
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_78

    const/4 v6, 0x1

    :goto_6f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    if-eqz v18, :cond_79

    const/16 v18, 0x1

    :goto_70
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    if-eqz v19, :cond_7a

    const/16 v19, 0x1

    :goto_71
    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v6, v1, v2}, Landroid/app/ActivityManagerNative;->keyguardGoingAwayShowingMedia(ZZZ)V

    .line 2131
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2132
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2130
    :cond_78
    const/4 v6, 0x0

    goto :goto_6f

    :cond_79
    const/16 v18, 0x0

    goto :goto_70

    :cond_7a
    const/16 v19, 0x0

    goto :goto_71

    .line 2137
    :pswitch_b3
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2138
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v76

    .line 2139
    .restart local v76    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v194

    .line 2140
    .local v194, "destAffinity":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v76

    move-object/from16 v2, v194

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->shouldUpRecreateTask(Landroid/os/IBinder;Ljava/lang/String;)Z

    move-result v0

    move/16 v264, v0

    .line 2141
    .restart local v264    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2142
    move/from16 v0, v264

    if-eqz v0, :cond_7b

    const/4 v6, 0x1

    :goto_72
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2143
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2142
    :cond_7b
    const/4 v6, 0x0

    goto :goto_72

    .line 2147
    .end local v76    # "token":Landroid/os/IBinder;
    .end local v194    # "destAffinity":Ljava/lang/String;
    .end local v264    # "res":Z
    :pswitch_b4
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2148
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v76

    .line 2149
    .restart local v76    # "token":Landroid/os/IBinder;
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object/16 v284, v0

    move-object/from16 v0, v284

    check-cast v0, Landroid/content/Intent;

    move-object/16 v284, v0

    .line 2150
    .local v284, "target":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v53

    .line 2151
    .restart local v53    # "resultCode":I
    const/16 v54, 0x0

    .line 2152
    .local v54, "resultData":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_7c

    .line 2153
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v54

    .end local v54    # "resultData":Landroid/content/Intent;
    check-cast v54, Landroid/content/Intent;

    .line 2155
    .restart local v54    # "resultData":Landroid/content/Intent;
    :cond_7c
    move-object/from16 v0, p0

    move-object/from16 v1, v76

    move-object/from16 v2, v284

    move/from16 v3, v53

    move-object/from16 v4, v54

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->navigateUpTo(Landroid/os/IBinder;Landroid/content/Intent;ILandroid/content/Intent;)Z

    move-result v0

    move/16 v264, v0

    .line 2156
    .restart local v264    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2157
    move/from16 v0, v264

    if-eqz v0, :cond_7d

    const/4 v6, 0x1

    :goto_73
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2158
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2157
    :cond_7d
    const/4 v6, 0x0

    goto :goto_73

    .line 2162
    .end local v53    # "resultCode":I
    .end local v54    # "resultData":Landroid/content/Intent;
    .end local v76    # "token":Landroid/os/IBinder;
    .end local v264    # "res":Z
    .end local v284    # "target":Landroid/content/Intent;
    :pswitch_b5
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2163
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v76

    .line 2164
    .restart local v76    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v76

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getLaunchedFromUid(Landroid/os/IBinder;)I

    move-result v0

    move/16 v264, v0

    .line 2165
    .local v264, "res":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2166
    move-object/from16 v0, p3

    move/from16 v1, v264

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2167
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2171
    .end local v76    # "token":Landroid/os/IBinder;
    .end local v264    # "res":I
    :pswitch_b6
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2172
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v76

    .line 2173
    .restart local v76    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v76

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getLaunchedFromPackage(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object v0

    move-object/16 v264, v0

    .line 2174
    .local v264, "res":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2175
    move-object/from16 v0, p3

    move-object/from16 v1, v264

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2176
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2180
    .end local v76    # "token":Landroid/os/IBinder;
    .end local v264    # "res":Ljava/lang/String;
    :pswitch_b7
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2181
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/app/IUserSwitchObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IUserSwitchObserver;

    move-result-object v239

    .line 2183
    .local v239, "observer":Landroid/app/IUserSwitchObserver;
    move-object/from16 v0, p0

    move-object/from16 v1, v239

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;)V

    .line 2184
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2185
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2189
    .end local v239    # "observer":Landroid/app/IUserSwitchObserver;
    :pswitch_b8
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2190
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/app/IUserSwitchObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IUserSwitchObserver;

    move-result-object v239

    .line 2192
    .restart local v239    # "observer":Landroid/app/IUserSwitchObserver;
    move-object/from16 v0, p0

    move-object/from16 v1, v239

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->unregisterUserSwitchObserver(Landroid/app/IUserSwitchObserver;)V

    .line 2193
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2194
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2198
    .end local v239    # "observer":Landroid/app/IUserSwitchObserver;
    :pswitch_b9
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2199
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->requestBugReport()V

    .line 2200
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2201
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2205
    :pswitch_ba
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2206
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v114

    .line 2207
    .restart local v114    # "pid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_7e

    const/16 v171, 0x1

    .line 2208
    .local v171, "aboveSystem":Z
    :goto_74
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    move-object/16 v259, v0

    .line 2209
    .restart local v259    # "reason":Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, v114

    move/from16 v2, v171

    move-object/from16 v3, v259

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->inputDispatchingTimedOut(IZLjava/lang/String;)J

    move-result-wide v0

    move-wide/16 v264, v0

    .line 2210
    .local v264, "res":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2211
    move-object/from16 v0, p3

    move-wide/from16 v1, v264

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 2212
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2207
    .end local v171    # "aboveSystem":Z
    .end local v259    # "reason":Ljava/lang/String;
    .end local v264    # "res":J
    :cond_7e
    const/16 v171, 0x0

    goto :goto_74

    .line 2216
    .end local v114    # "pid":I
    :pswitch_bb
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2217
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v160

    .line 2218
    .local v160, "requestType":I
    move-object/from16 v0, p0

    move/from16 v1, v160

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getAssistContextExtras(I)Landroid/os/Bundle;

    move-result-object v0

    move-object/16 v264, v0

    .line 2219
    .local v264, "res":Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2220
    move-object/from16 v0, p3

    move-object/from16 v1, v264

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 2221
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2225
    .end local v160    # "requestType":I
    .end local v264    # "res":Landroid/os/Bundle;
    :pswitch_bc
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2226
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v160

    .line 2227
    .restart local v160    # "requestType":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/os/IResultReceiver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/os/IResultReceiver;

    move-result-object v0

    move-object/16 v260, v0

    .line 2228
    .local v260, "receiver":Lcom/android/internal/os/IResultReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v173

    .line 2229
    .restart local v173    # "activityToken":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move/from16 v1, v160

    move-object/from16 v2, v260

    move-object/from16 v3, v173

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->requestAssistContextExtras(ILcom/android/internal/os/IResultReceiver;Landroid/os/IBinder;)Z

    move-result v0

    move/16 v264, v0

    .line 2230
    .local v264, "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2231
    move/from16 v0, v264

    if-eqz v0, :cond_7f

    const/4 v6, 0x1

    :goto_75
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2232
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2231
    :cond_7f
    const/4 v6, 0x0

    goto :goto_75

    .line 2236
    .end local v160    # "requestType":I
    .end local v173    # "activityToken":Landroid/os/IBinder;
    .end local v260    # "receiver":Lcom/android/internal/os/IResultReceiver;
    .end local v264    # "res":Z
    :pswitch_bd
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2237
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v76

    .line 2238
    .restart local v76    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v154

    .line 2239
    .local v154, "extras":Landroid/os/Bundle;
    sget-object v6, Landroid/app/assist/AssistStructure;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v155

    check-cast v155, Landroid/app/assist/AssistStructure;

    .line 2240
    .local v155, "structure":Landroid/app/assist/AssistStructure;
    sget-object v6, Landroid/app/assist/AssistContent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v156

    check-cast v156, Landroid/app/assist/AssistContent;

    .line 2241
    .local v156, "content":Landroid/app/assist/AssistContent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_80

    sget-object v6, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/Uri;

    move-object/from16 v157, v6

    .local v157, "referrer":Landroid/net/Uri;
    :goto_76
    move-object/from16 v152, p0

    move-object/from16 v153, v76

    .line 2242
    invoke-virtual/range {v152 .. v157}, Landroid/app/ActivityManagerNative;->reportAssistContextExtras(Landroid/os/IBinder;Landroid/os/Bundle;Landroid/app/assist/AssistStructure;Landroid/app/assist/AssistContent;Landroid/net/Uri;)V

    .line 2243
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2244
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2241
    .end local v157    # "referrer":Landroid/net/Uri;
    :cond_80
    const/16 v157, 0x0

    goto :goto_76

    .line 2248
    .end local v76    # "token":Landroid/os/IBinder;
    .end local v154    # "extras":Landroid/os/Bundle;
    .end local v155    # "structure":Landroid/app/assist/AssistStructure;
    .end local v156    # "content":Landroid/app/assist/AssistContent;
    :pswitch_be
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2249
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/Intent;

    .line 2250
    .restart local v9    # "intent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v160

    .line 2251
    .restart local v160    # "requestType":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v161

    .line 2252
    .local v161, "hint":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v162

    .line 2253
    .local v162, "userHandle":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v163

    .local v163, "args":Landroid/os/Bundle;
    move-object/from16 v158, p0

    move-object/from16 v159, v9

    .line 2254
    invoke-virtual/range {v158 .. v163}, Landroid/app/ActivityManagerNative;->launchAssistIntent(Landroid/content/Intent;ILjava/lang/String;ILandroid/os/Bundle;)Z

    move-result v0

    move/16 v264, v0

    .line 2255
    .restart local v264    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2256
    move/from16 v0, v264

    if-eqz v0, :cond_81

    const/4 v6, 0x1

    :goto_77
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2257
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2256
    :cond_81
    const/4 v6, 0x0

    goto :goto_77

    .line 2261
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v160    # "requestType":I
    .end local v161    # "hint":Ljava/lang/String;
    .end local v162    # "userHandle":I
    .end local v163    # "args":Landroid/os/Bundle;
    .end local v264    # "res":Z
    :pswitch_bf
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2262
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->isAssistDataAllowedOnCurrentActivity()Z

    move-result v0

    move/16 v264, v0

    .line 2263
    .restart local v264    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2264
    move/from16 v0, v264

    if-eqz v0, :cond_82

    const/4 v6, 0x1

    :goto_78
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2265
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2264
    :cond_82
    const/4 v6, 0x0

    goto :goto_78

    .line 2269
    .end local v264    # "res":Z
    :pswitch_c0
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2270
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v76

    .line 2271
    .restart local v76    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v163

    .line 2272
    .restart local v163    # "args":Landroid/os/Bundle;
    move-object/from16 v0, p0

    move-object/from16 v1, v76

    move-object/from16 v2, v163

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->showAssistFromActivity(Landroid/os/IBinder;Landroid/os/Bundle;)Z

    move-result v0

    move/16 v264, v0

    .line 2273
    .restart local v264    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2274
    move/from16 v0, v264

    if-eqz v0, :cond_83

    const/4 v6, 0x1

    :goto_79
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2275
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2274
    :cond_83
    const/4 v6, 0x0

    goto :goto_79

    .line 2279
    .end local v76    # "token":Landroid/os/IBinder;
    .end local v163    # "args":Landroid/os/Bundle;
    .end local v264    # "res":Z
    :pswitch_c1
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2280
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v177

    .line 2281
    .local v177, "appId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 2282
    .restart local v17    # "userId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    move-object/16 v259, v0

    .line 2283
    .restart local v259    # "reason":Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, v177

    move/from16 v2, v17

    move-object/from16 v3, v259

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->killUid(IILjava/lang/String;)V

    .line 2284
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2285
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2289
    .end local v17    # "userId":I
    .end local v177    # "appId":I
    .end local v259    # "reason":Ljava/lang/String;
    :pswitch_c2
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2290
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v62

    .line 2291
    .restart local v62    # "who":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_84

    const/16 v175, 0x1

    .line 2292
    .local v175, "allowRestart":Z
    :goto_7a
    move-object/from16 v0, p0

    move-object/from16 v1, v62

    move/from16 v2, v175

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->hang(Landroid/os/IBinder;Z)V

    .line 2293
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2294
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2291
    .end local v175    # "allowRestart":Z
    :cond_84
    const/16 v175, 0x0

    goto :goto_7a

    .line 2298
    .end local v62    # "who":Landroid/os/IBinder;
    :pswitch_c3
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2299
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v76

    .line 2300
    .restart local v76    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v76

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->reportActivityFullyDrawn(Landroid/os/IBinder;)V

    .line 2301
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2302
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2306
    .end local v76    # "token":Landroid/os/IBinder;
    :pswitch_c4
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2307
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v76

    .line 2308
    .restart local v76    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v76

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->notifyActivityDrawn(Landroid/os/IBinder;)V

    .line 2309
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2310
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2314
    .end local v76    # "token":Landroid/os/IBinder;
    :pswitch_c5
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2315
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->restart()V

    .line 2316
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2317
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2321
    :pswitch_c6
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2322
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->performIdleMaintenance()V

    .line 2323
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2324
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2328
    :pswitch_c7
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2329
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v243

    .line 2330
    .local v243, "parentActivityToken":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/app/IActivityContainerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IActivityContainerCallback;

    move-result-object v185

    .line 2332
    .local v185, "callback":Landroid/app/IActivityContainerCallback;
    move-object/from16 v0, p0

    move-object/from16 v1, v243

    move-object/from16 v2, v185

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->createVirtualActivityContainer(Landroid/os/IBinder;Landroid/app/IActivityContainerCallback;)Landroid/app/IActivityContainer;

    move-result-object v172

    .line 2334
    .local v172, "activityContainer":Landroid/app/IActivityContainer;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2335
    if-eqz v172, :cond_85

    .line 2336
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2337
    invoke-interface/range {v172 .. v172}, Landroid/app/IActivityContainer;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2341
    :goto_7b
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2339
    :cond_85
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_7b

    .line 2345
    .end local v172    # "activityContainer":Landroid/app/IActivityContainer;
    .end local v185    # "callback":Landroid/app/IActivityContainerCallback;
    .end local v243    # "parentActivityToken":Landroid/os/IBinder;
    :pswitch_c8
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2346
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/app/IActivityContainer$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IActivityContainer;

    move-result-object v172

    .line 2348
    .restart local v172    # "activityContainer":Landroid/app/IActivityContainer;
    move-object/from16 v0, p0

    move-object/from16 v1, v172

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->deleteActivityContainer(Landroid/app/IActivityContainer;)V

    .line 2349
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2350
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2354
    .end local v172    # "activityContainer":Landroid/app/IActivityContainer;
    :pswitch_c9
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2355
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v195

    .line 2356
    .local v195, "displayId":I
    move-object/from16 v0, p0

    move/from16 v1, v195

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->createStackOnDisplay(I)Landroid/app/IActivityContainer;

    move-result-object v172

    .line 2357
    .restart local v172    # "activityContainer":Landroid/app/IActivityContainer;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2358
    if-eqz v172, :cond_86

    .line 2359
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2360
    invoke-interface/range {v172 .. v172}, Landroid/app/IActivityContainer;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2364
    :goto_7c
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2362
    :cond_86
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_7c

    .line 2368
    .end local v172    # "activityContainer":Landroid/app/IActivityContainer;
    .end local v195    # "displayId":I
    :pswitch_ca
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2369
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v173

    .line 2370
    .restart local v173    # "activityToken":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v173

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getActivityDisplayId(Landroid/os/IBinder;)I

    move-result v195

    .line 2371
    .restart local v195    # "displayId":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2372
    move-object/from16 v0, p3

    move/from16 v1, v195

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2373
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2377
    .end local v173    # "activityToken":Landroid/os/IBinder;
    .end local v195    # "displayId":I
    :pswitch_cb
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2378
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v286, v0

    .line 2379
    .restart local v286    # "taskId":I
    move-object/from16 v0, p0

    move/from16 v1, v286

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->startLockTaskMode(I)V

    .line 2380
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2381
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2385
    .end local v286    # "taskId":I
    :pswitch_cc
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2386
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v76

    .line 2387
    .restart local v76    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v76

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->startLockTaskMode(Landroid/os/IBinder;)V

    .line 2388
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2389
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2393
    .end local v76    # "token":Landroid/os/IBinder;
    :pswitch_cd
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2394
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->startLockTaskModeOnCurrent()V

    .line 2395
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2396
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2400
    :pswitch_ce
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2401
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->stopLockTaskMode()V

    .line 2402
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2403
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2407
    :pswitch_cf
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2408
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->stopLockTaskModeOnCurrent()V

    .line 2409
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2410
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2414
    :pswitch_d0
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2415
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->isInLockTaskMode()Z

    move-result v215

    .line 2416
    .local v215, "isInLockTaskMode":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2417
    if-eqz v215, :cond_87

    const/4 v6, 0x1

    :goto_7d
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2418
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2417
    :cond_87
    const/4 v6, 0x0

    goto :goto_7d

    .line 2422
    .end local v215    # "isInLockTaskMode":Z
    :pswitch_d1
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2423
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getLockTaskModeState()I

    move-result v230

    .line 2424
    .local v230, "lockTaskModeState":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2425
    move-object/from16 v0, p3

    move/from16 v1, v230

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2426
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2430
    .end local v230    # "lockTaskModeState":I
    :pswitch_d2
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2431
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v76

    .line 2432
    .restart local v76    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v76

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->showLockTaskEscapeMessage(Landroid/os/IBinder;)V

    .line 2433
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2434
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2438
    .end local v76    # "token":Landroid/os/IBinder;
    :pswitch_d3
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2439
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v76

    .line 2440
    .restart local v76    # "token":Landroid/os/IBinder;
    sget-object v6, Landroid/app/ActivityManager$TaskDescription;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object/16 v293, v0

    move-object/from16 v0, v293

    check-cast v0, Landroid/app/ActivityManager$TaskDescription;

    move-object/16 v293, v0

    .line 2442
    .local v293, "values":Landroid/app/ActivityManager$TaskDescription;
    move-object/from16 v0, p0

    move-object/from16 v1, v76

    move-object/from16 v2, v293

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->setTaskDescription(Landroid/os/IBinder;Landroid/app/ActivityManager$TaskDescription;)V

    .line 2443
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2444
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2448
    .end local v76    # "token":Landroid/os/IBinder;
    .end local v293    # "values":Landroid/app/ActivityManager$TaskDescription;
    :pswitch_d4
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2449
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v286, v0

    .line 2450
    .restart local v286    # "taskId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v6, v0, :cond_88

    const/4 v0, 0x1

    move/16 v266, v0

    .line 2451
    .local v266, "resizeable":Z
    :goto_7e
    move-object/from16 v0, p0

    move/from16 v1, v286

    move/from16 v2, v266

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->setTaskResizeable(IZ)V

    .line 2452
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2453
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2450
    .end local v266    # "resizeable":Z
    :cond_88
    const/4 v0, 0x0

    move/16 v266, v0

    goto :goto_7e

    .line 2457
    .end local v286    # "taskId":I
    :pswitch_d5
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2458
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v286, v0

    .line 2459
    .restart local v286    # "taskId":I
    sget-object v6, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object/16 v258, v0

    move-object/from16 v0, v258

    check-cast v0, Landroid/graphics/Rect;

    move-object/16 v258, v0

    .line 2460
    .local v258, "r":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    move/from16 v1, v286

    move-object/from16 v2, v258

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->resizeTask(ILandroid/graphics/Rect;)V

    .line 2461
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2462
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2466
    .end local v258    # "r":Landroid/graphics/Rect;
    .end local v286    # "taskId":I
    :pswitch_d6
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2467
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v201

    .line 2468
    .local v201, "filename":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v201

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getTaskDescriptionIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v207

    .line 2469
    .local v207, "icon":Landroid/graphics/Bitmap;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2470
    if-nez v207, :cond_89

    .line 2471
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2476
    :goto_7f
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2473
    :cond_89
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2474
    const/4 v6, 0x0

    move-object/from16 v0, v207

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_7f

    .line 2480
    .end local v201    # "filename":Ljava/lang/String;
    .end local v207    # "icon":Landroid/graphics/Bitmap;
    :pswitch_d7
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2482
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-nez v6, :cond_8a

    .line 2483
    const/16 v184, 0x0

    .line 2487
    .restart local v184    # "bundle":Landroid/os/Bundle;
    :goto_80
    if-nez v184, :cond_8b

    const/16 v16, 0x0

    .line 2488
    .local v16, "options":Landroid/app/ActivityOptions;
    :goto_81
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->startInPlaceAnimationOnFrontMostApplication(Landroid/app/ActivityOptions;)V

    .line 2489
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2490
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2485
    .end local v16    # "options":Landroid/app/ActivityOptions;
    .end local v184    # "bundle":Landroid/os/Bundle;
    :cond_8a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v184

    .restart local v184    # "bundle":Landroid/os/Bundle;
    goto :goto_80

    .line 2487
    :cond_8b
    new-instance v16, Landroid/app/ActivityOptions;

    move-object/from16 v0, v16

    move-object/from16 v1, v184

    invoke-direct {v0, v1}, Landroid/app/ActivityOptions;-><init>(Landroid/os/Bundle;)V

    goto :goto_81

    .line 2494
    .end local v184    # "bundle":Landroid/os/Bundle;
    :pswitch_d8
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2495
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v76

    .line 2496
    .restart local v76    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-lez v6, :cond_8c

    const/16 v197, 0x1

    .line 2497
    .local v197, "enable":Z
    :goto_82
    move-object/from16 v0, p0

    move-object/from16 v1, v76

    move/from16 v2, v197

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->requestVisibleBehind(Landroid/os/IBinder;Z)Z

    move-result v0

    move/16 v281, v0

    .line 2498
    .restart local v281    # "success":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2499
    move/from16 v0, v281

    if-eqz v0, :cond_8d

    const/4 v6, 0x1

    :goto_83
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2500
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2496
    .end local v197    # "enable":Z
    .end local v281    # "success":Z
    :cond_8c
    const/16 v197, 0x0

    goto :goto_82

    .line 2499
    .restart local v197    # "enable":Z
    .restart local v281    # "success":Z
    :cond_8d
    const/4 v6, 0x0

    goto :goto_83

    .line 2504
    .end local v76    # "token":Landroid/os/IBinder;
    .end local v197    # "enable":Z
    .end local v281    # "success":Z
    :pswitch_d9
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2505
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v76

    .line 2506
    .restart local v76    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v76

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->isBackgroundVisibleBehind(Landroid/os/IBinder;)Z

    move-result v198

    .line 2507
    .restart local v198    # "enabled":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2508
    if-eqz v198, :cond_8e

    const/4 v6, 0x1

    :goto_84
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2509
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2508
    :cond_8e
    const/4 v6, 0x0

    goto :goto_84

    .line 2513
    .end local v76    # "token":Landroid/os/IBinder;
    .end local v198    # "enabled":Z
    :pswitch_da
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2514
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v76

    .line 2515
    .restart local v76    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v76

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->backgroundResourcesReleased(Landroid/os/IBinder;)V

    .line 2516
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2517
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2521
    .end local v76    # "token":Landroid/os/IBinder;
    :pswitch_db
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2522
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v76

    .line 2523
    .restart local v76    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v76

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->notifyLaunchTaskBehindComplete(Landroid/os/IBinder;)V

    .line 2524
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2525
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2529
    .end local v76    # "token":Landroid/os/IBinder;
    :pswitch_dc
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2530
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v76

    .line 2531
    .restart local v76    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v76

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->notifyEnterAnimationComplete(Landroid/os/IBinder;)V

    .line 2532
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2533
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2537
    .end local v76    # "token":Landroid/os/IBinder;
    :pswitch_dd
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2538
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->bootAnimationComplete()V

    .line 2539
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2540
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2544
    :pswitch_de
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2545
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v115

    .line 2546
    .restart local v115    # "uid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v203

    .line 2547
    .local v203, "firstPacket":[B
    move-object/from16 v0, p0

    move/from16 v1, v115

    move-object/from16 v2, v203

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->notifyCleartextNetwork(I[B)V

    .line 2548
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2549
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2553
    .end local v115    # "uid":I
    .end local v203    # "firstPacket":[B
    :pswitch_df
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2554
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v166

    .line 2555
    .local v166, "procName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v115

    .line 2556
    .restart local v115    # "uid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v168

    .line 2557
    .local v168, "maxMemSize":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v170

    .local v170, "reportPackage":Ljava/lang/String;
    move-object/from16 v165, p0

    move/from16 v167, v115

    .line 2558
    invoke-virtual/range {v165 .. v170}, Landroid/app/ActivityManagerNative;->setDumpHeapDebugLimit(Ljava/lang/String;IJLjava/lang/String;)V

    .line 2559
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2560
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2564
    .end local v115    # "uid":I
    .end local v166    # "procName":Ljava/lang/String;
    .end local v168    # "maxMemSize":J
    .end local v170    # "reportPackage":Ljava/lang/String;
    :pswitch_e0
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2565
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v145

    .line 2566
    .restart local v145    # "path":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v145

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->dumpHeapFinished(Ljava/lang/String;)V

    .line 2567
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2568
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2572
    .end local v145    # "path":Ljava/lang/String;
    :pswitch_e1
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2573
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/service/voice/IVoiceInteractionSession$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/voice/IVoiceInteractionSession;

    move-result-object v46

    .line 2575
    .restart local v46    # "session":Landroid/service/voice/IVoiceInteractionSession;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_8f

    const/16 v218, 0x1

    .line 2576
    .local v218, "keepAwake":Z
    :goto_85
    move-object/from16 v0, p0

    move-object/from16 v1, v46

    move/from16 v2, v218

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->setVoiceKeepAwake(Landroid/service/voice/IVoiceInteractionSession;Z)V

    .line 2577
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2578
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2575
    .end local v218    # "keepAwake":Z
    :cond_8f
    const/16 v218, 0x0

    goto :goto_85

    .line 2582
    .end local v46    # "session":Landroid/service/voice/IVoiceInteractionSession;
    :pswitch_e2
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2583
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 2584
    .restart local v17    # "userId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v242

    .line 2585
    .local v242, "packages":[Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v242

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->updateLockTaskPackages(I[Ljava/lang/String;)V

    .line 2586
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2587
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2591
    .end local v17    # "userId":I
    .end local v242    # "packages":[Ljava/lang/String;
    :pswitch_e3
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2592
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v32

    .line 2593
    .restart local v32    # "packageName":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->updateDeviceOwner(Ljava/lang/String;)V

    .line 2594
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2595
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2599
    .end local v32    # "packageName":Ljava/lang/String;
    :pswitch_e4
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2600
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v250

    .line 2601
    .restart local v250    # "pkg":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 2602
    .restart local v8    # "callingPackage":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v250

    invoke-virtual {v0, v1, v8}, Landroid/app/ActivityManagerNative;->getPackageProcessState(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    move/16 v264, v0

    .line 2603
    .local v264, "res":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2604
    move-object/from16 v0, p3

    move/from16 v1, v264

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2605
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2609
    .end local v8    # "callingPackage":Ljava/lang/String;
    .end local v250    # "pkg":Ljava/lang/String;
    .end local v264    # "res":I
    :pswitch_e5
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2610
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v123

    .line 2611
    .restart local v123    # "process":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 2612
    .restart local v17    # "userId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v219

    .line 2613
    .local v219, "level":I
    move-object/from16 v0, p0

    move-object/from16 v1, v123

    move/from16 v2, v17

    move/from16 v3, v219

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->setProcessMemoryTrimLevel(Ljava/lang/String;II)Z

    move-result v0

    move/16 v264, v0

    .line 2614
    .local v264, "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2615
    move/from16 v0, v264

    if-eqz v0, :cond_90

    const/4 v6, 0x1

    :goto_86
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2616
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2615
    :cond_90
    const/4 v6, 0x0

    goto :goto_86

    .line 2620
    .end local v17    # "userId":I
    .end local v123    # "process":Ljava/lang/String;
    .end local v219    # "level":I
    .end local v264    # "res":Z
    :pswitch_e6
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2621
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v76

    .line 2622
    .restart local v76    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v76

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->isRootVoiceInteraction(Landroid/os/IBinder;)Z

    move-result v0

    move/16 v264, v0

    .line 2623
    .restart local v264    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2624
    move/from16 v0, v264

    if-eqz v0, :cond_91

    const/4 v6, 0x1

    :goto_87
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2625
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2624
    :cond_91
    const/4 v6, 0x0

    goto :goto_87

    .line 2631
    .end local v76    # "token":Landroid/os/IBinder;
    .end local v264    # "res":Z
    :pswitch_e7
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2632
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getTopActivityComponentName()Landroid/content/ComponentName;

    move-result-object v110

    .line 2633
    .local v110, "name":Landroid/content/ComponentName;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2634
    move-object/from16 v0, v110

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Landroid/content/ComponentName;->writeToParcel(Landroid/content/ComponentName;Landroid/os/Parcel;)V

    .line 2635
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2641
    .end local v110    # "name":Landroid/content/ComponentName;
    :pswitch_e8
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2642
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v271, v0

    .line 2643
    .local v271, "serviceIndex":I
    move-object/from16 v0, p0

    move/from16 v1, v271

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getPermissionServiceBinderProxy(I)Landroid/os/IBinder;

    move-result-object v0

    move-object/16 v256, v0

    .line 2644
    .local v256, "proxy":Landroid/os/IBinder;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2645
    move-object/from16 v0, p3

    move-object/from16 v1, v256

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2646
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2649
    .end local v256    # "proxy":Landroid/os/IBinder;
    .end local v271    # "serviceIndex":I
    :pswitch_e9
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2650
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    move-object/16 v256, v0

    .line 2651
    .restart local v256    # "proxy":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v271, v0

    .line 2652
    .restart local v271    # "serviceIndex":I
    move-object/from16 v0, p0

    move-object/from16 v1, v256

    move/from16 v2, v271

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->setPermissionServiceBinderProxy(Landroid/os/IBinder;I)V

    .line 2653
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2654
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2659
    .end local v256    # "proxy":Landroid/os/IBinder;
    .end local v271    # "serviceIndex":I
    :pswitch_ea
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2660
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v254

    .line 2661
    .restart local v254    # "processName":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v254

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->setIgnoredAnrProcess(Ljava/lang/String;)V

    .line 2662
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2663
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2666
    .end local v254    # "processName":Ljava/lang/String;
    :pswitch_eb
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2667
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_92

    const/4 v0, 0x1

    move/16 v262, v0

    .line 2668
    .local v262, "request":Z
    :goto_88
    move-object/from16 v0, p0

    move/from16 v1, v262

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->isRequestPermission(Z)V

    .line 2669
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2670
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2667
    .end local v262    # "request":Z
    :cond_92
    const/4 v0, 0x0

    move/16 v262, v0

    goto :goto_88

    .line 2677
    :pswitch_ec
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2678
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v250

    .line 2679
    .restart local v250    # "pkg":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v250

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getAppBootMode(Ljava/lang/String;)I

    move-result v116

    .line 2680
    .restart local v116    # "mode":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2681
    move-object/from16 v0, p3

    move/from16 v1, v116

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2682
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2686
    .end local v116    # "mode":I
    .end local v250    # "pkg":Ljava/lang/String;
    :pswitch_ed
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2687
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v250

    .line 2688
    .restart local v250    # "pkg":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v116

    .line 2689
    .restart local v116    # "mode":I
    move-object/from16 v0, p0

    move-object/from16 v1, v250

    move/from16 v2, v116

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->setAppBootMode(Ljava/lang/String;I)I

    move-result v0

    move/16 v269, v0

    .line 2690
    .local v269, "ret":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2691
    move-object/from16 v0, p3

    move/from16 v1, v269

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2692
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2696
    .end local v116    # "mode":I
    .end local v250    # "pkg":Ljava/lang/String;
    .end local v269    # "ret":I
    :pswitch_ee
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2697
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getAppBootState()Z

    move-result v217

    .line 2698
    .restart local v217    # "isit":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2699
    if-eqz v217, :cond_93

    const/4 v6, 0x1

    :goto_89
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2700
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2699
    :cond_93
    const/4 v6, 0x0

    goto :goto_89

    .line 2704
    .end local v217    # "isit":Z
    :pswitch_ef
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2705
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_94

    const/4 v0, 0x1

    move/16 v279, v0

    .line 2706
    .local v279, "state":Z
    :goto_8a
    move-object/from16 v0, p0

    move/from16 v1, v279

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->setAppBootState(Z)V

    .line 2707
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2708
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2705
    .end local v279    # "state":Z
    :cond_94
    const/4 v0, 0x0

    move/16 v279, v0

    goto :goto_8a

    .line 2711
    :pswitch_f0
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2712
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v204

    .line 2713
    .local v204, "flag":I
    move-object/from16 v0, p0

    move/from16 v1, v204

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getAllAppBootModes(I)Ljava/util/List;

    move-result-object v221

    .line 2714
    .local v221, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$AppBootMode;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2715
    move-object/from16 v0, p3

    move-object/from16 v1, v221

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 2716
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2719
    .end local v204    # "flag":I
    .end local v221    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$AppBootMode;>;"
    :pswitch_f1
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2720
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v32

    .line 2721
    .restart local v32    # "packageName":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getCallerPackageArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v251

    .line 2722
    .local v251, "pkgArray":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2723
    move-object/from16 v0, p3

    move-object/from16 v1, v251

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 2724
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2727
    .end local v32    # "packageName":Ljava/lang/String;
    .end local v251    # "pkgArray":[Ljava/lang/String;
    :pswitch_f2
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2728
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v32

    .line 2729
    .restart local v32    # "packageName":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getCalleePackageArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v251

    .line 2730
    .restart local v251    # "pkgArray":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2731
    move-object/from16 v0, p3

    move-object/from16 v1, v251

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 2732
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 2736
    .end local v32    # "packageName":Ljava/lang/String;
    .end local v251    # "pkgArray":[Ljava/lang/String;
    :pswitch_f3
    const-string v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2737
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v250

    .line 2738
    .restart local v250    # "pkg":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v204

    .line 2739
    .restart local v204    # "flag":I
    move-object/from16 v0, p0

    move-object/from16 v1, v250

    move/from16 v2, v204

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->updateAccesibilityServiceFlag(Ljava/lang/String;I)V

    .line 2740
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2741
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 149
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_6f
        :pswitch_1
        :pswitch_63
        :pswitch_64
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_17
        :pswitch_18
        :pswitch_1a
        :pswitch_1b
        :pswitch_1e
        :pswitch_1f
        :pswitch_23
        :pswitch_2a
        :pswitch_0
        :pswitch_2c
        :pswitch_35
        :pswitch_0
        :pswitch_36
        :pswitch_38
        :pswitch_39
        :pswitch_b
        :pswitch_3e
        :pswitch_3f
        :pswitch_40
        :pswitch_43
        :pswitch_44
        :pswitch_45
        :pswitch_19
        :pswitch_0
        :pswitch_0
        :pswitch_66
        :pswitch_67
        :pswitch_48
        :pswitch_49
        :pswitch_4a
        :pswitch_4b
        :pswitch_41
        :pswitch_4e
        :pswitch_4f
        :pswitch_55
        :pswitch_56
        :pswitch_58
        :pswitch_5a
        :pswitch_5c
        :pswitch_5d
        :pswitch_68
        :pswitch_61
        :pswitch_72
        :pswitch_24
        :pswitch_47
        :pswitch_1d
        :pswitch_50
        :pswitch_51
        :pswitch_52
        :pswitch_69
        :pswitch_8
        :pswitch_6a
        :pswitch_3c
        :pswitch_4c
        :pswitch_4d
        :pswitch_46
        :pswitch_57
        :pswitch_42
        :pswitch_2b
        :pswitch_62
        :pswitch_27
        :pswitch_5b
        :pswitch_75
        :pswitch_6d
        :pswitch_26
        :pswitch_25
        :pswitch_28
        :pswitch_77
        :pswitch_7c
        :pswitch_78
        :pswitch_79
        :pswitch_7a
        :pswitch_7b
        :pswitch_7d
        :pswitch_7e
        :pswitch_7f
        :pswitch_53
        :pswitch_54
        :pswitch_80
        :pswitch_81
        :pswitch_82
        :pswitch_83
        :pswitch_84
        :pswitch_6
        :pswitch_85
        :pswitch_70
        :pswitch_73
        :pswitch_86
        :pswitch_4
        :pswitch_10
        :pswitch_5
        :pswitch_29
        :pswitch_88
        :pswitch_71
        :pswitch_89
        :pswitch_8e
        :pswitch_8f
        :pswitch_90
        :pswitch_91
        :pswitch_92
        :pswitch_93
        :pswitch_94
        :pswitch_95
        :pswitch_96
        :pswitch_97
        :pswitch_a0
        :pswitch_1c
        :pswitch_98
        :pswitch_99
        :pswitch_9a
        :pswitch_9b
        :pswitch_a7
        :pswitch_a8
        :pswitch_9c
        :pswitch_0
        :pswitch_a2
        :pswitch_a3
        :pswitch_a4
        :pswitch_a9
        :pswitch_ad
        :pswitch_ae
        :pswitch_af
        :pswitch_0
        :pswitch_74
        :pswitch_37
        :pswitch_3d
        :pswitch_76
        :pswitch_6e
        :pswitch_9f
        :pswitch_b3
        :pswitch_b4
        :pswitch_65
        :pswitch_c
        :pswitch_b5
        :pswitch_3a
        :pswitch_aa
        :pswitch_2
        :pswitch_9e
        :pswitch_b7
        :pswitch_b8
        :pswitch_a1
        :pswitch_b9
        :pswitch_ba
        :pswitch_0
        :pswitch_ab
        :pswitch_bb
        :pswitch_bd
        :pswitch_b6
        :pswitch_c1
        :pswitch_87
        :pswitch_c2
        :pswitch_c7
        :pswitch_2d
        :pswitch_2e
        :pswitch_2f
        :pswitch_32
        :pswitch_30
        :pswitch_8b
        :pswitch_8c
        :pswitch_c4
        :pswitch_c3
        :pswitch_c5
        :pswitch_c6
        :pswitch_5e
        :pswitch_5f
        :pswitch_60
        :pswitch_3b
        :pswitch_0
        :pswitch_ca
        :pswitch_c8
        :pswitch_e5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_e7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_16
        :pswitch_0
        :pswitch_0
        :pswitch_ac
        :pswitch_9d
        :pswitch_31
        :pswitch_cb
        :pswitch_cc
        :pswitch_ce
        :pswitch_d0
        :pswitch_d3
        :pswitch_7
        :pswitch_8d
        :pswitch_20
        :pswitch_cd
        :pswitch_cf
        :pswitch_d
        :pswitch_8a
        :pswitch_d8
        :pswitch_d9
        :pswitch_da
        :pswitch_db
        :pswitch_9
        :pswitch_dc
        :pswitch_b0
        :pswitch_3
        :pswitch_21
        :pswitch_22
        :pswitch_e
        :pswitch_f
        :pswitch_dd
        :pswitch_d6
        :pswitch_be
        :pswitch_d7
        :pswitch_59
        :pswitch_34
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_de
        :pswitch_c9
        :pswitch_33
        :pswitch_d4
        :pswitch_bc
        :pswitch_d5
        :pswitch_d1
        :pswitch_df
        :pswitch_e0
        :pswitch_e1
        :pswitch_e2
        :pswitch_6b
        :pswitch_6c
        :pswitch_e4
        :pswitch_d2
        :pswitch_e3
        :pswitch_b1
        :pswitch_a5
        :pswitch_a6
        :pswitch_bf
        :pswitch_c0
        :pswitch_e6
        :pswitch_e8
        :pswitch_e9
        :pswitch_ea
        :pswitch_b2
        :pswitch_eb
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_f0
        :pswitch_ec
        :pswitch_ed
        :pswitch_ee
        :pswitch_ef
        :pswitch_f1
        :pswitch_f2
        :pswitch_f3
    .end packed-switch
.end method
