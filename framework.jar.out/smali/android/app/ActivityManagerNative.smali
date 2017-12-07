.class public abstract Landroid/app/ActivityManagerNative;
.super Landroid/os/Binder;
.source "ActivityManagerNative.java"

# interfaces
.implements Landroid/app/IActivityManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ActivityManagerNative$1;
    }
.end annotation


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

.field static volatile sSystemReady:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 105
    const/4 v0, 0x0

    sput-boolean v0, Landroid/app/ActivityManagerNative;->sSystemReady:Z

    .line 3293
    new-instance v0, Landroid/app/ActivityManagerNative$1;

    invoke-direct {v0}, Landroid/app/ActivityManagerNative$1;-><init>()V

    sput-object v0, Landroid/app/ActivityManagerNative;->gDefault:Landroid/util/Singleton;

    .line 70
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 148
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 149
    const-string/jumbo v0, "android.app.IActivityManager"

    invoke-virtual {p0, p0, v0}, Landroid/app/ActivityManagerNative;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 148
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/IActivityManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 77
    if-nez p0, :cond_0

    .line 78
    return-object v1

    .line 81
    :cond_0
    const-string/jumbo v1, "android.app.IActivityManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/app/IActivityManager;

    .line 82
    .local v0, "in":Landroid/app/IActivityManager;
    if-eqz v0, :cond_1

    .line 83
    return-object v0

    .line 86
    :cond_1
    new-instance v1, Landroid/app/ActivityManagerProxy;

    invoke-direct {v1, p0}, Landroid/app/ActivityManagerProxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;I)V
    .locals 1
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 108
    const/4 v0, -0x1

    invoke-static {p0, p1, v0, p2}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;II)V

    .line 107
    return-void
.end method

.method public static broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;II)V
    .locals 15
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "appOp"    # I
    .param p3, "userId"    # I

    .prologue
    .line 118
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 119
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 120
    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    move-object v2, p0

    move/from16 v9, p2

    move/from16 v13, p3

    .line 118
    invoke-interface/range {v0 .. v13}, Landroid/app/IActivityManager;->broadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZI)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    :goto_0
    return-void

    .line 121
    :catch_0
    move-exception v14

    .local v14, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public static getDefault()Landroid/app/IActivityManager;
    .locals 1

    .prologue
    .line 93
    sget-object v0, Landroid/app/ActivityManagerNative;->gDefault:Landroid/util/Singleton;

    invoke-virtual {v0}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/IActivityManager;

    return-object v0
.end method

.method public static isSystemReady()Z
    .locals 1

    .prologue
    .line 100
    sget-boolean v0, Landroid/app/ActivityManagerNative;->sSystemReady:Z

    if-nez v0, :cond_0

    .line 101
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->testIsSystemReady()Z

    move-result v0

    sput-boolean v0, Landroid/app/ActivityManagerNative;->sSystemReady:Z

    .line 103
    :cond_0
    sget-boolean v0, Landroid/app/ActivityManagerNative;->sSystemReady:Z

    return v0
.end method

.method public static noteAlarmFinish(Landroid/app/PendingIntent;ILjava/lang/String;)V
    .locals 3
    .param p0, "ps"    # Landroid/app/PendingIntent;
    .param p1, "sourceUid"    # I
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 143
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/PendingIntent;->getTarget()Landroid/content/IIntentSender;

    move-result-object v1

    :cond_0
    invoke-interface {v2, v1, p1, p2}, Landroid/app/IActivityManager;->noteAlarmFinish(Landroid/content/IIntentSender;ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    :goto_0
    return-void

    .line 144
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public static noteAlarmStart(Landroid/app/PendingIntent;ILjava/lang/String;)V
    .locals 3
    .param p0, "ps"    # Landroid/app/PendingIntent;
    .param p1, "sourceUid"    # I
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 136
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/PendingIntent;->getTarget()Landroid/content/IIntentSender;

    move-result-object v1

    :cond_0
    invoke-interface {v2, v1, p1, p2}, Landroid/app/IActivityManager;->noteAlarmStart(Landroid/content/IIntentSender;ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    :goto_0
    return-void

    .line 137
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public static noteWakeupAlarm(Landroid/app/PendingIntent;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "ps"    # Landroid/app/PendingIntent;
    .param p1, "sourceUid"    # I
    .param p2, "sourcePkg"    # Ljava/lang/String;
    .param p3, "tag"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 128
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/PendingIntent;->getTarget()Landroid/content/IIntentSender;

    move-result-object v1

    :cond_0
    invoke-interface {v2, v1, p1, p2, p3}, Landroid/app/IActivityManager;->noteWakeupAlarm(Landroid/content/IIntentSender;ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    :goto_0
    return-void

    .line 130
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private readIntArray(Landroid/os/Parcel;)[I
    .locals 2
    .param p1, "data"    # Landroid/os/Parcel;

    .prologue
    .line 3280
    const/4 v0, 0x0

    .line 3281
    .local v0, "smallest":[I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 3282
    .local v1, "smallestSize":I
    if-lez v1, :cond_0

    .line 3283
    new-array v0, v1, [I

    .line 3284
    .local v0, "smallest":[I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readIntArray([I)V

    .line 3286
    .end local v0    # "smallest":[I
    :cond_0
    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 3290
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 392
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
    .line 155
    move/from16 v0, p1

    packed-switch v0, :pswitch_data_0

    .line 3276
    :pswitch_0
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    return v6

    .line 158
    :pswitch_1
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 159
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v217

    .line 160
    .local v217, "b":Landroid/os/IBinder;
    invoke-static/range {v217 .. v217}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 161
    .local v7, "app":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 162
    .local v8, "callingPackage":Ljava/lang/String;
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/Intent;

    .line 163
    .local v9, "intent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 164
    .local v10, "resolvedType":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v11

    .line 165
    .local v11, "resultTo":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 166
    .local v12, "resultWho":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 167
    .local v13, "requestCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 168
    .local v14, "startFlags":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_0

    .line 169
    sget-object v6, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/app/ProfilerInfo;

    .line 170
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_1

    .line 171
    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Bundle;

    move-object/from16 v16, v6

    .local v16, "options":Landroid/os/Bundle;
    :goto_1
    move-object/from16 v6, p0

    .line 172
    invoke-virtual/range {v6 .. v16}, Landroid/app/ActivityManagerNative;->startActivity(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;)I

    move-result v0

    move/16 v346, v0

    .line 174
    .local v346, "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 175
    move-object/from16 v0, p3

    move/from16 v1, v346

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 176
    const/4 v6, 0x1

    return v6

    .line 169
    .end local v16    # "options":Landroid/os/Bundle;
    .end local v346    # "result":I
    :cond_0
    const/4 v15, 0x0

    .local v15, "profilerInfo":Landroid/app/ProfilerInfo;
    goto :goto_0

    .line 171
    .end local v15    # "profilerInfo":Landroid/app/ProfilerInfo;
    :cond_1
    const/16 v16, 0x0

    goto :goto_1

    .line 181
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .end local v8    # "callingPackage":Ljava/lang/String;
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v10    # "resolvedType":Ljava/lang/String;
    .end local v11    # "resultTo":Landroid/os/IBinder;
    .end local v12    # "resultWho":Ljava/lang/String;
    .end local v13    # "requestCode":I
    .end local v14    # "startFlags":I
    .end local v217    # "b":Landroid/os/IBinder;
    :pswitch_2
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 182
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v217

    .line 183
    .restart local v217    # "b":Landroid/os/IBinder;
    invoke-static/range {v217 .. v217}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 184
    .restart local v7    # "app":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 185
    .restart local v8    # "callingPackage":Ljava/lang/String;
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/Intent;

    .line 186
    .restart local v9    # "intent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 187
    .restart local v10    # "resolvedType":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v11

    .line 188
    .restart local v11    # "resultTo":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 189
    .restart local v12    # "resultWho":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 190
    .restart local v13    # "requestCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 191
    .restart local v14    # "startFlags":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_2

    .line 192
    sget-object v6, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/app/ProfilerInfo;

    .line 193
    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_3

    .line 194
    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/os/Bundle;

    .line 195
    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .local v17, "userId":I
    move-object/from16 v6, p0

    .line 196
    invoke-virtual/range {v6 .. v17}, Landroid/app/ActivityManagerNative;->startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)I

    move-result v0

    move/16 v346, v0

    .line 198
    .restart local v346    # "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 199
    move-object/from16 v0, p3

    move/from16 v1, v346

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 200
    const/4 v6, 0x1

    return v6

    .line 192
    .end local v17    # "userId":I
    .end local v346    # "result":I
    :cond_2
    const/4 v15, 0x0

    .restart local v15    # "profilerInfo":Landroid/app/ProfilerInfo;
    goto :goto_2

    .line 194
    .end local v15    # "profilerInfo":Landroid/app/ProfilerInfo;
    :cond_3
    const/16 v16, 0x0

    .local v16, "options":Landroid/os/Bundle;
    goto :goto_3

    .line 205
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .end local v8    # "callingPackage":Ljava/lang/String;
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v10    # "resolvedType":Ljava/lang/String;
    .end local v11    # "resultTo":Landroid/os/IBinder;
    .end local v12    # "resultWho":Ljava/lang/String;
    .end local v13    # "requestCode":I
    .end local v14    # "startFlags":I
    .end local v16    # "options":Landroid/os/Bundle;
    .end local v217    # "b":Landroid/os/IBinder;
    :pswitch_3
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 206
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v217

    .line 207
    .restart local v217    # "b":Landroid/os/IBinder;
    invoke-static/range {v217 .. v217}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 208
    .restart local v7    # "app":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 209
    .restart local v8    # "callingPackage":Ljava/lang/String;
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/Intent;

    .line 210
    .restart local v9    # "intent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 211
    .restart local v10    # "resolvedType":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v11

    .line 212
    .restart local v11    # "resultTo":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 213
    .restart local v12    # "resultWho":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 214
    .restart local v13    # "requestCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 215
    .restart local v14    # "startFlags":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_4

    .line 216
    sget-object v6, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/app/ProfilerInfo;

    .line 217
    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_5

    .line 218
    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/os/Bundle;

    .line 219
    :goto_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_6

    const/16 v29, 0x1

    .line 220
    .local v29, "ignoreTargetSecurity":Z
    :goto_6
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

    .line 221
    invoke-virtual/range {v18 .. v30}, Landroid/app/ActivityManagerNative;->startActivityAsCaller(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;ZI)I

    move-result v0

    move/16 v346, v0

    .line 224
    .restart local v346    # "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 225
    move-object/from16 v0, p3

    move/from16 v1, v346

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 226
    const/4 v6, 0x1

    return v6

    .line 216
    .end local v17    # "userId":I
    .end local v29    # "ignoreTargetSecurity":Z
    .end local v346    # "result":I
    :cond_4
    const/4 v15, 0x0

    .restart local v15    # "profilerInfo":Landroid/app/ProfilerInfo;
    goto :goto_4

    .line 218
    .end local v15    # "profilerInfo":Landroid/app/ProfilerInfo;
    :cond_5
    const/16 v16, 0x0

    .restart local v16    # "options":Landroid/os/Bundle;
    goto :goto_5

    .line 219
    .end local v16    # "options":Landroid/os/Bundle;
    :cond_6
    const/16 v29, 0x0

    .restart local v29    # "ignoreTargetSecurity":Z
    goto :goto_6

    .line 231
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .end local v8    # "callingPackage":Ljava/lang/String;
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v10    # "resolvedType":Ljava/lang/String;
    .end local v11    # "resultTo":Landroid/os/IBinder;
    .end local v12    # "resultWho":Ljava/lang/String;
    .end local v13    # "requestCode":I
    .end local v14    # "startFlags":I
    .end local v29    # "ignoreTargetSecurity":Z
    .end local v217    # "b":Landroid/os/IBinder;
    :pswitch_4
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 232
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v217

    .line 233
    .restart local v217    # "b":Landroid/os/IBinder;
    invoke-static/range {v217 .. v217}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 234
    .restart local v7    # "app":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 235
    .restart local v8    # "callingPackage":Ljava/lang/String;
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/Intent;

    .line 236
    .restart local v9    # "intent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 237
    .restart local v10    # "resolvedType":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v11

    .line 238
    .restart local v11    # "resultTo":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 239
    .restart local v12    # "resultWho":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 240
    .restart local v13    # "requestCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 241
    .restart local v14    # "startFlags":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_7

    .line 242
    sget-object v6, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/app/ProfilerInfo;

    .line 243
    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_8

    .line 244
    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/os/Bundle;

    .line 245
    :goto_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .restart local v17    # "userId":I
    move-object/from16 v6, p0

    .line 246
    invoke-virtual/range {v6 .. v17}, Landroid/app/ActivityManagerNative;->startActivityAndWait(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)Landroid/app/IActivityManager$WaitResult;

    move-result-object v0

    move-object/16 v347, v0

    .line 248
    .local v347, "result":Landroid/app/IActivityManager$WaitResult;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 249
    const/4 v6, 0x0

    move-object/from16 v0, v347

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/app/IActivityManager$WaitResult;->writeToParcel(Landroid/os/Parcel;I)V

    .line 250
    const/4 v6, 0x1

    return v6

    .line 242
    .end local v17    # "userId":I
    .end local v347    # "result":Landroid/app/IActivityManager$WaitResult;
    :cond_7
    const/4 v15, 0x0

    .restart local v15    # "profilerInfo":Landroid/app/ProfilerInfo;
    goto :goto_7

    .line 244
    .end local v15    # "profilerInfo":Landroid/app/ProfilerInfo;
    :cond_8
    const/16 v16, 0x0

    .restart local v16    # "options":Landroid/os/Bundle;
    goto :goto_8

    .line 255
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .end local v8    # "callingPackage":Ljava/lang/String;
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v10    # "resolvedType":Ljava/lang/String;
    .end local v11    # "resultTo":Landroid/os/IBinder;
    .end local v12    # "resultWho":Ljava/lang/String;
    .end local v13    # "requestCode":I
    .end local v14    # "startFlags":I
    .end local v16    # "options":Landroid/os/Bundle;
    .end local v217    # "b":Landroid/os/IBinder;
    :pswitch_5
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 256
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v217

    .line 257
    .restart local v217    # "b":Landroid/os/IBinder;
    invoke-static/range {v217 .. v217}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 258
    .restart local v7    # "app":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 259
    .restart local v8    # "callingPackage":Ljava/lang/String;
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/Intent;

    .line 260
    .restart local v9    # "intent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 261
    .restart local v10    # "resolvedType":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v11

    .line 262
    .restart local v11    # "resultTo":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 263
    .restart local v12    # "resultWho":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 264
    .restart local v13    # "requestCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 265
    .restart local v14    # "startFlags":I
    sget-object v6, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Landroid/content/res/Configuration;

    .line 266
    .local v39, "config":Landroid/content/res/Configuration;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_9

    .line 267
    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/os/Bundle;

    .line 268
    :goto_9
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

    .line 269
    invoke-virtual/range {v30 .. v41}, Landroid/app/ActivityManagerNative;->startActivityWithConfig(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/content/res/Configuration;Landroid/os/Bundle;I)I

    move-result v0

    move/16 v346, v0

    .line 271
    .restart local v346    # "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 272
    move-object/from16 v0, p3

    move/from16 v1, v346

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 273
    const/4 v6, 0x1

    return v6

    .line 267
    .end local v17    # "userId":I
    .end local v346    # "result":I
    :cond_9
    const/16 v16, 0x0

    .restart local v16    # "options":Landroid/os/Bundle;
    goto :goto_9

    .line 278
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .end local v8    # "callingPackage":Ljava/lang/String;
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v10    # "resolvedType":Ljava/lang/String;
    .end local v11    # "resultTo":Landroid/os/IBinder;
    .end local v12    # "resultWho":Ljava/lang/String;
    .end local v13    # "requestCode":I
    .end local v14    # "startFlags":I
    .end local v16    # "options":Landroid/os/Bundle;
    .end local v39    # "config":Landroid/content/res/Configuration;
    .end local v217    # "b":Landroid/os/IBinder;
    :pswitch_6
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 279
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v217

    .line 280
    .restart local v217    # "b":Landroid/os/IBinder;
    invoke-static/range {v217 .. v217}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 281
    .restart local v7    # "app":Landroid/app/IApplicationThread;
    sget-object v6, Landroid/content/IntentSender;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/content/IntentSender;

    .line 282
    .local v20, "intent":Landroid/content/IntentSender;
    const/16 v21, 0x0

    .line 283
    .local v21, "fillInIntent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_a

    .line 284
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v21

    .end local v21    # "fillInIntent":Landroid/content/Intent;
    check-cast v21, Landroid/content/Intent;

    .line 286
    :cond_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 287
    .restart local v10    # "resolvedType":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v11

    .line 288
    .restart local v11    # "resultTo":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 289
    .restart local v12    # "resultWho":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 290
    .restart local v13    # "requestCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v26

    .line 291
    .local v26, "flagsMask":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v27

    .line 292
    .local v27, "flagsValues":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_b

    .line 293
    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Bundle;

    move-object/from16 v16, v6

    .local v16, "options":Landroid/os/Bundle;
    :goto_a
    move-object/from16 v18, p0

    move-object/from16 v19, v7

    move-object/from16 v22, v10

    move-object/from16 v23, v11

    move-object/from16 v24, v12

    move/from16 v25, v13

    move-object/from16 v28, v16

    .line 294
    invoke-virtual/range {v18 .. v28}, Landroid/app/ActivityManagerNative;->startActivityIntentSender(Landroid/app/IApplicationThread;Landroid/content/IntentSender;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;)I

    move-result v0

    move/16 v346, v0

    .line 297
    .restart local v346    # "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 298
    move-object/from16 v0, p3

    move/from16 v1, v346

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 299
    const/4 v6, 0x1

    return v6

    .line 293
    .end local v16    # "options":Landroid/os/Bundle;
    .end local v346    # "result":I
    :cond_b
    const/16 v16, 0x0

    goto :goto_a

    .line 304
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .end local v10    # "resolvedType":Ljava/lang/String;
    .end local v11    # "resultTo":Landroid/os/IBinder;
    .end local v12    # "resultWho":Ljava/lang/String;
    .end local v13    # "requestCode":I
    .end local v20    # "intent":Landroid/content/IntentSender;
    .end local v26    # "flagsMask":I
    .end local v27    # "flagsValues":I
    .end local v217    # "b":Landroid/os/IBinder;
    :pswitch_7
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 305
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 306
    .restart local v8    # "callingPackage":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v42

    .line 307
    .local v42, "callingPid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v43

    .line 308
    .local v43, "callingUid":I
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/Intent;

    .line 309
    .restart local v9    # "intent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 311
    .restart local v10    # "resolvedType":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 310
    invoke-static {v6}, Landroid/service/voice/IVoiceInteractionSession$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/voice/IVoiceInteractionSession;

    move-result-object v46

    .line 313
    .local v46, "session":Landroid/service/voice/IVoiceInteractionSession;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 312
    invoke-static {v6}, Lcom/android/internal/app/IVoiceInteractor$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IVoiceInteractor;

    move-result-object v47

    .line 314
    .local v47, "interactor":Lcom/android/internal/app/IVoiceInteractor;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 315
    .restart local v14    # "startFlags":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_c

    .line 316
    sget-object v6, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/app/ProfilerInfo;

    .line 317
    :goto_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_d

    .line 318
    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/os/Bundle;

    .line 319
    :goto_c
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

    .line 320
    invoke-virtual/range {v40 .. v51}, Landroid/app/ActivityManagerNative;->startVoiceActivity(Ljava/lang/String;IILandroid/content/Intent;Ljava/lang/String;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;ILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)I

    move-result v0

    move/16 v346, v0

    .line 322
    .restart local v346    # "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 323
    move-object/from16 v0, p3

    move/from16 v1, v346

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 324
    const/4 v6, 0x1

    return v6

    .line 316
    .end local v17    # "userId":I
    .end local v346    # "result":I
    :cond_c
    const/4 v15, 0x0

    .restart local v15    # "profilerInfo":Landroid/app/ProfilerInfo;
    goto :goto_b

    .line 318
    .end local v15    # "profilerInfo":Landroid/app/ProfilerInfo;
    :cond_d
    const/16 v16, 0x0

    .local v16, "options":Landroid/os/Bundle;
    goto :goto_c

    .line 329
    .end local v8    # "callingPackage":Ljava/lang/String;
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v10    # "resolvedType":Ljava/lang/String;
    .end local v14    # "startFlags":I
    .end local v16    # "options":Landroid/os/Bundle;
    .end local v42    # "callingPid":I
    .end local v43    # "callingUid":I
    .end local v46    # "session":Landroid/service/voice/IVoiceInteractionSession;
    .end local v47    # "interactor":Lcom/android/internal/app/IVoiceInteractor;
    :pswitch_8
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 330
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v96

    .line 331
    .local v96, "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v16

    .line 332
    .local v16, "options":Landroid/os/Bundle;
    move-object/from16 v0, p0

    move-object/from16 v1, v96

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->startLocalVoiceInteraction(Landroid/os/IBinder;Landroid/os/Bundle;)V

    .line 333
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 334
    const/4 v6, 0x1

    return v6

    .line 339
    .end local v16    # "options":Landroid/os/Bundle;
    .end local v96    # "token":Landroid/os/IBinder;
    :pswitch_9
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 340
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v96

    .line 341
    .restart local v96    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v96

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->stopLocalVoiceInteraction(Landroid/os/IBinder;)V

    .line 342
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 343
    const/4 v6, 0x1

    return v6

    .line 348
    .end local v96    # "token":Landroid/os/IBinder;
    :pswitch_a
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 349
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->supportsLocalVoiceInteraction()Z

    move-result v0

    move/16 v348, v0

    .line 350
    .local v348, "result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 351
    move/from16 v0, v348

    if-eqz v0, :cond_e

    const/4 v6, 0x1

    :goto_d
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 352
    const/4 v6, 0x1

    return v6

    .line 351
    :cond_e
    const/4 v6, 0x0

    goto :goto_d

    .line 357
    .end local v348    # "result":Z
    :pswitch_b
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 358
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v224

    .line 359
    .local v224, "callingActivity":Landroid/os/IBinder;
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/Intent;

    .line 360
    .restart local v9    # "intent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_f

    .line 361
    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Bundle;

    move-object/from16 v16, v6

    .line 362
    .restart local v16    # "options":Landroid/os/Bundle;
    :goto_e
    move-object/from16 v0, p0

    move-object/from16 v1, v224

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v9, v2}, Landroid/app/ActivityManagerNative;->startNextMatchingActivity(Landroid/os/IBinder;Landroid/content/Intent;Landroid/os/Bundle;)Z

    move-result v0

    move/16 v348, v0

    .line 363
    .restart local v348    # "result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 364
    move/from16 v0, v348

    if-eqz v0, :cond_10

    const/4 v6, 0x1

    :goto_f
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 365
    const/4 v6, 0x1

    return v6

    .line 361
    .end local v16    # "options":Landroid/os/Bundle;
    .end local v348    # "result":Z
    :cond_f
    const/16 v16, 0x0

    goto :goto_e

    .line 364
    .restart local v16    # "options":Landroid/os/Bundle;
    .restart local v348    # "result":Z
    :cond_10
    const/4 v6, 0x0

    goto :goto_f

    .line 370
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v16    # "options":Landroid/os/Bundle;
    .end local v224    # "callingActivity":Landroid/os/IBinder;
    .end local v348    # "result":Z
    :pswitch_c
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 371
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v72

    .line 373
    .local v72, "taskId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-nez v6, :cond_11

    const/16 v16, 0x0

    .line 374
    .restart local v16    # "options":Landroid/os/Bundle;
    :goto_10
    move-object/from16 v0, p0

    move/from16 v1, v72

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->startActivityFromRecents(ILandroid/os/Bundle;)I

    move-result v0

    move/16 v346, v0

    .line 375
    .restart local v346    # "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 376
    move-object/from16 v0, p3

    move/from16 v1, v346

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 377
    const/4 v6, 0x1

    return v6

    .line 373
    .end local v16    # "options":Landroid/os/Bundle;
    .end local v346    # "result":I
    :cond_11
    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Bundle;

    move-object/from16 v16, v6

    goto :goto_10

    .line 381
    .end local v72    # "taskId":I
    :pswitch_d
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 382
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v96

    .line 383
    .restart local v96    # "token":Landroid/os/IBinder;
    const/4 v0, 0x0

    move-object/16 v350, v0

    .line 384
    .local v350, "resultData":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v53

    .line 385
    .local v53, "resultCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_12

    .line 386
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object/16 v350, v0

    .end local v350    # "resultData":Landroid/content/Intent;
    move-object/from16 v0, v350

    check-cast v0, Landroid/content/Intent;

    move-object/16 v350, v0

    .line 388
    :cond_12
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v242

    .line 389
    .local v242, "finishTask":I
    move-object/from16 v0, p0

    move-object/from16 v1, v96

    move/from16 v2, v53

    move-object/from16 v3, v350

    move/from16 v4, v242

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->finishActivity(Landroid/os/IBinder;ILandroid/content/Intent;I)Z

    move-result v0

    move/16 v342, v0

    .line 390
    .local v342, "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 391
    move/from16 v0, v342

    if-eqz v0, :cond_13

    const/4 v6, 0x1

    :goto_11
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 392
    const/4 v6, 0x1

    return v6

    .line 391
    :cond_13
    const/4 v6, 0x0

    goto :goto_11

    .line 396
    .end local v53    # "resultCode":I
    .end local v96    # "token":Landroid/os/IBinder;
    .end local v242    # "finishTask":I
    .end local v342    # "res":Z
    :pswitch_e
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 397
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v96

    .line 398
    .restart local v96    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 399
    .restart local v12    # "resultWho":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 400
    .restart local v13    # "requestCode":I
    move-object/from16 v0, p0

    move-object/from16 v1, v96

    invoke-virtual {v0, v1, v12, v13}, Landroid/app/ActivityManagerNative;->finishSubActivity(Landroid/os/IBinder;Ljava/lang/String;I)V

    .line 401
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 402
    const/4 v6, 0x1

    return v6

    .line 406
    .end local v12    # "resultWho":Ljava/lang/String;
    .end local v13    # "requestCode":I
    .end local v96    # "token":Landroid/os/IBinder;
    :pswitch_f
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 407
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v96

    .line 408
    .restart local v96    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v96

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->finishActivityAffinity(Landroid/os/IBinder;)Z

    move-result v0

    move/16 v342, v0

    .line 409
    .restart local v342    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 410
    move/from16 v0, v342

    if-eqz v0, :cond_14

    const/4 v6, 0x1

    :goto_12
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 411
    const/4 v6, 0x1

    return v6

    .line 410
    :cond_14
    const/4 v6, 0x0

    goto :goto_12

    .line 415
    .end local v96    # "token":Landroid/os/IBinder;
    .end local v342    # "res":Z
    :pswitch_10
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 417
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 416
    invoke-static {v6}, Landroid/service/voice/IVoiceInteractionSession$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/voice/IVoiceInteractionSession;

    move-result-object v46

    .line 418
    .restart local v46    # "session":Landroid/service/voice/IVoiceInteractionSession;
    move-object/from16 v0, p0

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->finishVoiceTask(Landroid/service/voice/IVoiceInteractionSession;)V

    .line 419
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 420
    const/4 v6, 0x1

    return v6

    .line 424
    .end local v46    # "session":Landroid/service/voice/IVoiceInteractionSession;
    :pswitch_11
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 425
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v96

    .line 426
    .restart local v96    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v96

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->releaseActivityInstance(Landroid/os/IBinder;)Z

    move-result v0

    move/16 v342, v0

    .line 427
    .restart local v342    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 428
    move/from16 v0, v342

    if-eqz v0, :cond_15

    const/4 v6, 0x1

    :goto_13
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 429
    const/4 v6, 0x1

    return v6

    .line 428
    :cond_15
    const/4 v6, 0x0

    goto :goto_13

    .line 433
    .end local v96    # "token":Landroid/os/IBinder;
    .end local v342    # "res":Z
    :pswitch_12
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 434
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 435
    .restart local v7    # "app":Landroid/app/IApplicationThread;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/app/ActivityManagerNative;->releaseSomeActivities(Landroid/app/IApplicationThread;)V

    .line 436
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 437
    const/4 v6, 0x1

    return v6

    .line 441
    .end local v7    # "app":Landroid/app/IApplicationThread;
    :pswitch_13
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 442
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v96

    .line 443
    .restart local v96    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v96

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->willActivityBeVisible(Landroid/os/IBinder;)Z

    move-result v0

    move/16 v342, v0

    .line 444
    .restart local v342    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 445
    move/from16 v0, v342

    if-eqz v0, :cond_16

    const/4 v6, 0x1

    :goto_14
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 446
    const/4 v6, 0x1

    return v6

    .line 445
    :cond_16
    const/4 v6, 0x0

    goto :goto_14

    .line 451
    .end local v96    # "token":Landroid/os/IBinder;
    .end local v342    # "res":Z
    :pswitch_14
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 452
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v217

    .line 454
    .restart local v217    # "b":Landroid/os/IBinder;
    if-eqz v217, :cond_17

    invoke-static/range {v217 .. v217}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 455
    :goto_15
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v32

    .line 456
    .local v32, "packageName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v217

    .line 458
    if-eqz v217, :cond_18

    invoke-static/range {v217 .. v217}, Landroid/content/IIntentReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentReceiver;

    move-result-object v33

    .line 459
    :goto_16
    sget-object v6, Landroid/content/IntentFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Landroid/content/IntentFilter;

    .line 460
    .local v34, "filter":Landroid/content/IntentFilter;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v35

    .line 461
    .local v35, "perm":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .restart local v17    # "userId":I
    move-object/from16 v30, p0

    move-object/from16 v31, v7

    move/from16 v36, v17

    .line 462
    invoke-virtual/range {v30 .. v36}, Landroid/app/ActivityManagerNative;->registerReceiver(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/IIntentReceiver;Landroid/content/IntentFilter;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v9

    .line 463
    .restart local v9    # "intent":Landroid/content/Intent;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 464
    if-eqz v9, :cond_19

    .line 465
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 466
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v9, v0, v6}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 470
    :goto_17
    const/4 v6, 0x1

    return v6

    .line 454
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v17    # "userId":I
    .end local v32    # "packageName":Ljava/lang/String;
    .end local v34    # "filter":Landroid/content/IntentFilter;
    .end local v35    # "perm":Ljava/lang/String;
    :cond_17
    const/4 v7, 0x0

    .local v7, "app":Landroid/app/IApplicationThread;
    goto :goto_15

    .line 458
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .restart local v32    # "packageName":Ljava/lang/String;
    :cond_18
    const/16 v33, 0x0

    .local v33, "rec":Landroid/content/IIntentReceiver;
    goto :goto_16

    .line 468
    .end local v33    # "rec":Landroid/content/IIntentReceiver;
    .restart local v9    # "intent":Landroid/content/Intent;
    .restart local v17    # "userId":I
    .restart local v34    # "filter":Landroid/content/IntentFilter;
    .restart local v35    # "perm":Ljava/lang/String;
    :cond_19
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_17

    .line 475
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v17    # "userId":I
    .end local v32    # "packageName":Ljava/lang/String;
    .end local v34    # "filter":Landroid/content/IntentFilter;
    .end local v35    # "perm":Ljava/lang/String;
    .end local v217    # "b":Landroid/os/IBinder;
    :pswitch_15
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 476
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v217

    .line 477
    .restart local v217    # "b":Landroid/os/IBinder;
    if-nez v217, :cond_1a

    .line 478
    const/4 v6, 0x1

    return v6

    .line 480
    :cond_1a
    invoke-static/range {v217 .. v217}, Landroid/content/IIntentReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentReceiver;

    move-result-object v33

    .line 481
    .local v33, "rec":Landroid/content/IIntentReceiver;
    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->unregisterReceiver(Landroid/content/IIntentReceiver;)V

    .line 482
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 483
    const/4 v6, 0x1

    return v6

    .line 488
    .end local v33    # "rec":Landroid/content/IIntentReceiver;
    .end local v217    # "b":Landroid/os/IBinder;
    :pswitch_16
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 489
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v217

    .line 491
    .restart local v217    # "b":Landroid/os/IBinder;
    if-eqz v217, :cond_1b

    invoke-static/range {v217 .. v217}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 492
    :goto_18
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/Intent;

    .line 493
    .restart local v9    # "intent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 494
    .restart local v10    # "resolvedType":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v217

    .line 496
    if-eqz v217, :cond_1c

    invoke-static/range {v217 .. v217}, Landroid/content/IIntentReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentReceiver;

    move-result-object v52

    .line 497
    :goto_19
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v53

    .line 498
    .restart local v53    # "resultCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v54

    .line 499
    .local v54, "resultData":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v55

    .line 500
    .local v55, "resultExtras":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v56

    .line 501
    .local v56, "perms":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v57

    .line 502
    .local v57, "appOp":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v16

    .line 503
    .restart local v16    # "options":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_1d

    const/16 v59, 0x1

    .line 504
    .local v59, "serialized":Z
    :goto_1a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_1e

    const/16 v60, 0x1

    .line 505
    .local v60, "sticky":Z
    :goto_1b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .restart local v17    # "userId":I
    move-object/from16 v48, p0

    move-object/from16 v49, v7

    move-object/from16 v50, v9

    move-object/from16 v51, v10

    move-object/from16 v58, v16

    move/from16 v61, v17

    .line 506
    invoke-virtual/range {v48 .. v61}, Landroid/app/ActivityManagerNative;->broadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZI)I

    move-result v0

    move/16 v336, v0

    .line 509
    .local v336, "res":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 510
    move-object/from16 v0, p3

    move/from16 v1, v336

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 511
    const/4 v6, 0x1

    return v6

    .line 491
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v10    # "resolvedType":Ljava/lang/String;
    .end local v16    # "options":Landroid/os/Bundle;
    .end local v17    # "userId":I
    .end local v53    # "resultCode":I
    .end local v54    # "resultData":Ljava/lang/String;
    .end local v55    # "resultExtras":Landroid/os/Bundle;
    .end local v56    # "perms":[Ljava/lang/String;
    .end local v57    # "appOp":I
    .end local v59    # "serialized":Z
    .end local v60    # "sticky":Z
    .end local v336    # "res":I
    :cond_1b
    const/4 v7, 0x0

    .restart local v7    # "app":Landroid/app/IApplicationThread;
    goto :goto_18

    .line 496
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .restart local v9    # "intent":Landroid/content/Intent;
    .restart local v10    # "resolvedType":Ljava/lang/String;
    :cond_1c
    const/16 v52, 0x0

    .local v52, "resultTo":Landroid/content/IIntentReceiver;
    goto :goto_19

    .line 503
    .end local v52    # "resultTo":Landroid/content/IIntentReceiver;
    .restart local v16    # "options":Landroid/os/Bundle;
    .restart local v53    # "resultCode":I
    .restart local v54    # "resultData":Ljava/lang/String;
    .restart local v55    # "resultExtras":Landroid/os/Bundle;
    .restart local v56    # "perms":[Ljava/lang/String;
    .restart local v57    # "appOp":I
    :cond_1d
    const/16 v59, 0x0

    .restart local v59    # "serialized":Z
    goto :goto_1a

    .line 504
    :cond_1e
    const/16 v60, 0x0

    .restart local v60    # "sticky":Z
    goto :goto_1b

    .line 516
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v10    # "resolvedType":Ljava/lang/String;
    .end local v16    # "options":Landroid/os/Bundle;
    .end local v53    # "resultCode":I
    .end local v54    # "resultData":Ljava/lang/String;
    .end local v55    # "resultExtras":Landroid/os/Bundle;
    .end local v56    # "perms":[Ljava/lang/String;
    .end local v57    # "appOp":I
    .end local v59    # "serialized":Z
    .end local v60    # "sticky":Z
    .end local v217    # "b":Landroid/os/IBinder;
    :pswitch_17
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 517
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v217

    .line 518
    .restart local v217    # "b":Landroid/os/IBinder;
    if-eqz v217, :cond_1f

    invoke-static/range {v217 .. v217}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 519
    :goto_1c
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/Intent;

    .line 520
    .restart local v9    # "intent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 521
    .restart local v17    # "userId":I
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v7, v9, v1}, Landroid/app/ActivityManagerNative;->unbroadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;I)V

    .line 522
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 523
    const/4 v6, 0x1

    return v6

    .line 518
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v17    # "userId":I
    :cond_1f
    const/4 v7, 0x0

    .restart local v7    # "app":Landroid/app/IApplicationThread;
    goto :goto_1c

    .line 527
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .end local v217    # "b":Landroid/os/IBinder;
    :pswitch_18
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 528
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v62

    .line 529
    .local v62, "who":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v53

    .line 530
    .restart local v53    # "resultCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v54

    .line 531
    .restart local v54    # "resultData":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v55

    .line 532
    .restart local v55    # "resultExtras":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_21

    const/16 v66, 0x1

    .line 533
    .local v66, "resultAbort":Z
    :goto_1d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v67

    .line 534
    .local v67, "intentFlags":I
    if-eqz v62, :cond_20

    move-object/from16 v61, p0

    move/from16 v63, v53

    move-object/from16 v64, v54

    move-object/from16 v65, v55

    .line 535
    invoke-virtual/range {v61 .. v67}, Landroid/app/ActivityManagerNative;->finishReceiver(Landroid/os/IBinder;ILjava/lang/String;Landroid/os/Bundle;ZI)V

    .line 537
    :cond_20
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 538
    const/4 v6, 0x1

    return v6

    .line 532
    .end local v66    # "resultAbort":Z
    .end local v67    # "intentFlags":I
    :cond_21
    const/16 v66, 0x0

    .restart local v66    # "resultAbort":Z
    goto :goto_1d

    .line 545
    .end local v53    # "resultCode":I
    .end local v54    # "resultData":Ljava/lang/String;
    .end local v55    # "resultExtras":Landroid/os/Bundle;
    .end local v62    # "who":Landroid/os/IBinder;
    .end local v66    # "resultAbort":Z
    :pswitch_19
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 546
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v62

    .line 547
    .restart local v62    # "who":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v70

    .line 548
    .local v70, "hasCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v53

    .line 549
    .restart local v53    # "resultCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v54

    .line 550
    .restart local v54    # "resultData":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v55

    .line 551
    .restart local v55    # "resultExtras":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_23

    const/16 v66, 0x1

    .line 552
    .restart local v66    # "resultAbort":Z
    :goto_1e
    if-eqz v62, :cond_22

    move-object/from16 v68, p0

    move-object/from16 v69, v62

    move/from16 v71, v53

    move-object/from16 v72, v54

    move-object/from16 v73, v55

    move/from16 v74, v66

    .line 553
    invoke-virtual/range {v68 .. v74}, Landroid/app/ActivityManagerNative;->finishNotOrderReceiver(Landroid/os/IBinder;IILjava/lang/String;Landroid/os/Bundle;Z)V

    .line 555
    :cond_22
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 556
    const/4 v6, 0x1

    return v6

    .line 551
    .end local v66    # "resultAbort":Z
    :cond_23
    const/16 v66, 0x0

    .restart local v66    # "resultAbort":Z
    goto :goto_1e

    .line 562
    .end local v53    # "resultCode":I
    .end local v54    # "resultData":Ljava/lang/String;
    .end local v55    # "resultExtras":Landroid/os/Bundle;
    .end local v62    # "who":Landroid/os/IBinder;
    .end local v66    # "resultAbort":Z
    .end local v70    # "hasCode":I
    :pswitch_1a
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 564
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 563
    invoke-static {v6}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 565
    .local v7, "app":Landroid/app/IApplicationThread;
    if-eqz v7, :cond_24

    .line 566
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/app/ActivityManagerNative;->attachApplication(Landroid/app/IApplicationThread;)V

    .line 568
    :cond_24
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 569
    const/4 v6, 0x1

    return v6

    .line 573
    .end local v7    # "app":Landroid/app/IApplicationThread;
    :pswitch_1b
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 574
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v96

    .line 575
    .restart local v96    # "token":Landroid/os/IBinder;
    const/16 v39, 0x0

    .line 576
    .local v39, "config":Landroid/content/res/Configuration;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_25

    .line 577
    sget-object v6, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v39

    .end local v39    # "config":Landroid/content/res/Configuration;
    check-cast v39, Landroid/content/res/Configuration;

    .line 579
    :cond_25
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_27

    const/4 v0, 0x1

    move/16 v367, v0

    .line 580
    .local v367, "stopProfiling":Z
    :goto_1f
    if-eqz v96, :cond_26

    .line 581
    move-object/from16 v0, p0

    move-object/from16 v1, v96

    move-object/from16 v2, v39

    move/from16 v3, v367

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->activityIdle(Landroid/os/IBinder;Landroid/content/res/Configuration;Z)V

    .line 583
    :cond_26
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 584
    const/4 v6, 0x1

    return v6

    .line 579
    .end local v367    # "stopProfiling":Z
    :cond_27
    const/4 v0, 0x0

    move/16 v367, v0

    .restart local v367    # "stopProfiling":Z
    goto :goto_1f

    .line 588
    .end local v96    # "token":Landroid/os/IBinder;
    .end local v367    # "stopProfiling":Z
    :pswitch_1c
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 589
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v96

    .line 590
    .restart local v96    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v96

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->activityResumed(Landroid/os/IBinder;)V

    .line 591
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 592
    const/4 v6, 0x1

    return v6

    .line 596
    .end local v96    # "token":Landroid/os/IBinder;
    :pswitch_1d
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 597
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v96

    .line 598
    .restart local v96    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v96

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->activityPaused(Landroid/os/IBinder;)V

    .line 599
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 600
    const/4 v6, 0x1

    return v6

    .line 604
    .end local v96    # "token":Landroid/os/IBinder;
    :pswitch_1e
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 605
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v96

    .line 606
    .restart local v96    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    move-object/16 v294, v0

    .line 607
    .local v294, "map":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readPersistableBundle()Landroid/os/PersistableBundle;

    move-result-object v0

    move-object/16 v317, v0

    .line 608
    .local v317, "persistentState":Landroid/os/PersistableBundle;
    sget-object v6, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v232

    check-cast v232, Ljava/lang/CharSequence;

    .line 609
    .local v232, "description":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    move-object/from16 v1, v96

    move-object/from16 v2, v294

    move-object/from16 v3, v317

    move-object/from16 v4, v232

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->activityStopped(Landroid/os/IBinder;Landroid/os/Bundle;Landroid/os/PersistableBundle;Ljava/lang/CharSequence;)V

    .line 610
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 611
    const/4 v6, 0x1

    return v6

    .line 615
    .end local v96    # "token":Landroid/os/IBinder;
    .end local v232    # "description":Ljava/lang/CharSequence;
    .end local v294    # "map":Landroid/os/Bundle;
    .end local v317    # "persistentState":Landroid/os/PersistableBundle;
    :pswitch_1f
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 616
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v96

    .line 617
    .restart local v96    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v96

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->activitySlept(Landroid/os/IBinder;)V

    .line 618
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 619
    const/4 v6, 0x1

    return v6

    .line 623
    .end local v96    # "token":Landroid/os/IBinder;
    :pswitch_20
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 624
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v96

    .line 625
    .restart local v96    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v96

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->activityDestroyed(Landroid/os/IBinder;)V

    .line 626
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 627
    const/4 v6, 0x1

    return v6

    .line 631
    .end local v96    # "token":Landroid/os/IBinder;
    :pswitch_21
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 632
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v96

    .line 633
    .restart local v96    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v96

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->activityRelaunched(Landroid/os/IBinder;)V

    .line 634
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 635
    const/4 v6, 0x1

    return v6

    .line 639
    .end local v96    # "token":Landroid/os/IBinder;
    :pswitch_22
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 640
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v96

    .line 641
    .restart local v96    # "token":Landroid/os/IBinder;
    if-eqz v96, :cond_28

    move-object/from16 v0, p0

    move-object/from16 v1, v96

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getCallingPackage(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object v0

    move-object/16 v341, v0

    .line 642
    :goto_20
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 643
    move-object/from16 v0, p3

    move-object/from16 v1, v341

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 644
    const/4 v6, 0x1

    return v6

    .line 641
    :cond_28
    const/4 v0, 0x0

    move-object/16 v341, v0

    .local v341, "res":Ljava/lang/String;
    goto :goto_20

    .line 648
    .end local v96    # "token":Landroid/os/IBinder;
    .end local v341    # "res":Ljava/lang/String;
    :pswitch_23
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 649
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v96

    .line 650
    .restart local v96    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v96

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getCallingActivity(Landroid/os/IBinder;)Landroid/content/ComponentName;

    move-result-object v226

    .line 651
    .local v226, "cn":Landroid/content/ComponentName;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 652
    move-object/from16 v0, v226

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Landroid/content/ComponentName;->writeToParcel(Landroid/content/ComponentName;Landroid/os/Parcel;)V

    .line 653
    const/4 v6, 0x1

    return v6

    .line 657
    .end local v96    # "token":Landroid/os/IBinder;
    .end local v226    # "cn":Landroid/content/ComponentName;
    :pswitch_24
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 658
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 659
    .restart local v8    # "callingPackage":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/app/ActivityManagerNative;->getAppTasks(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    move-object/16 v289, v0

    .line 660
    .local v289, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/IAppTask;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 661
    move-object/from16 v0, v289

    if-eqz v0, :cond_29

    invoke-interface/range {v289 .. v289}, Ljava/util/List;->size()I

    move-result v205

    .line 662
    .local v205, "N":I
    :goto_21
    move-object/from16 v0, p3

    move/from16 v1, v205

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 664
    const/4 v0, 0x0

    move/16 v256, v0

    .local v256, "i":I
    :goto_22
    move/from16 v0, v256

    move/from16 v1, v205

    if-ge v0, v1, :cond_2a

    .line 665
    move-object/from16 v0, v289

    move/from16 v1, v256

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object/16 v374, v0

    move-object/from16 v0, v374

    check-cast v0, Landroid/app/IAppTask;

    move-object/16 v374, v0

    .line 666
    .local v374, "task":Landroid/app/IAppTask;
    invoke-interface/range {v374 .. v374}, Landroid/app/IAppTask;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 664
    move/from16 v0, v256

    add-int/lit8 v0, v0, 0x1

    move/16 v256, v0

    goto :goto_22

    .line 661
    .end local v205    # "N":I
    .end local v256    # "i":I
    .end local v374    # "task":Landroid/app/IAppTask;
    :cond_29
    const/16 v205, -0x1

    goto :goto_21

    .line 668
    .restart local v205    # "N":I
    .restart local v256    # "i":I
    :cond_2a
    const/4 v6, 0x1

    return v6

    .line 672
    .end local v8    # "callingPackage":Ljava/lang/String;
    .end local v205    # "N":I
    .end local v256    # "i":I
    .end local v289    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/IAppTask;>;"
    :pswitch_25
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 673
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v176

    .line 674
    .local v176, "activityToken":Landroid/os/IBinder;
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/Intent;

    .line 676
    .restart local v9    # "intent":Landroid/content/Intent;
    sget-object v6, Landroid/app/ActivityManager$TaskDescription;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v231

    check-cast v231, Landroid/app/ActivityManager$TaskDescription;

    .line 677
    .local v231, "descr":Landroid/app/ActivityManager$TaskDescription;
    sget-object v6, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object/16 v377, v0

    move-object/from16 v0, v377

    check-cast v0, Landroid/graphics/Bitmap;

    move-object/16 v377, v0

    .line 678
    .local v377, "thumbnail":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    move-object/from16 v1, v176

    move-object/from16 v2, v231

    move-object/from16 v3, v377

    invoke-virtual {v0, v1, v9, v2, v3}, Landroid/app/ActivityManagerNative;->addAppTask(Landroid/os/IBinder;Landroid/content/Intent;Landroid/app/ActivityManager$TaskDescription;Landroid/graphics/Bitmap;)I

    move-result v0

    move/16 v336, v0

    .line 679
    .restart local v336    # "res":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 680
    move-object/from16 v0, p3

    move/from16 v1, v336

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 681
    const/4 v6, 0x1

    return v6

    .line 685
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v176    # "activityToken":Landroid/os/IBinder;
    .end local v231    # "descr":Landroid/app/ActivityManager$TaskDescription;
    .end local v336    # "res":I
    .end local v377    # "thumbnail":Landroid/graphics/Bitmap;
    :pswitch_26
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 686
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getAppTaskThumbnailSize()Landroid/graphics/Point;

    move-result-object v0

    move-object/16 v359, v0

    .line 687
    .local v359, "size":Landroid/graphics/Point;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 688
    const/4 v6, 0x0

    move-object/from16 v0, v359

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/graphics/Point;->writeToParcel(Landroid/os/Parcel;I)V

    .line 689
    const/4 v6, 0x1

    return v6

    .line 693
    .end local v359    # "size":Landroid/graphics/Point;
    :pswitch_27
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 694
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v296, v0

    .line 695
    .local v296, "maxNum":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v106

    .line 696
    .local v106, "fl":I
    move-object/from16 v0, p0

    move/from16 v1, v296

    move/from16 v2, v106

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->getTasks(II)Ljava/util/List;

    move-result-object v0

    move-object/16 v287, v0

    .line 697
    .local v287, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 698
    move-object/from16 v0, v287

    if-eqz v0, :cond_2b

    invoke-interface/range {v287 .. v287}, Ljava/util/List;->size()I

    move-result v205

    .line 699
    .restart local v205    # "N":I
    :goto_23
    move-object/from16 v0, p3

    move/from16 v1, v205

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 701
    const/4 v0, 0x0

    move/16 v256, v0

    .restart local v256    # "i":I
    :goto_24
    move/from16 v0, v256

    move/from16 v1, v205

    if-ge v0, v1, :cond_2c

    .line 702
    move-object/from16 v0, v287

    move/from16 v1, v256

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object/16 v265, v0

    move-object/from16 v0, v265

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    move-object/16 v265, v0

    .line 703
    .local v265, "info":Landroid/app/ActivityManager$RunningTaskInfo;
    const/4 v6, 0x0

    move-object/from16 v0, v265

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/app/ActivityManager$RunningTaskInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 701
    move/from16 v0, v256

    add-int/lit8 v0, v0, 0x1

    move/16 v256, v0

    goto :goto_24

    .line 698
    .end local v205    # "N":I
    .end local v256    # "i":I
    .end local v265    # "info":Landroid/app/ActivityManager$RunningTaskInfo;
    :cond_2b
    const/16 v205, -0x1

    goto :goto_23

    .line 705
    .restart local v205    # "N":I
    .restart local v256    # "i":I
    :cond_2c
    const/4 v6, 0x1

    return v6

    .line 709
    .end local v106    # "fl":I
    .end local v205    # "N":I
    .end local v256    # "i":I
    .end local v287    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .end local v296    # "maxNum":I
    :pswitch_28
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 710
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v296, v0

    .line 711
    .restart local v296    # "maxNum":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v106

    .line 712
    .restart local v106    # "fl":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 713
    .restart local v17    # "userId":I
    move-object/from16 v0, p0

    move/from16 v1, v296

    move/from16 v2, v106

    move/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->getRecentTasks(III)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    move-object/16 v280, v0

    .line 715
    .local v280, "list":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 716
    const/4 v6, 0x1

    move-object/from16 v0, v280

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    .line 717
    const/4 v6, 0x1

    return v6

    .line 721
    .end local v17    # "userId":I
    .end local v106    # "fl":I
    .end local v280    # "list":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    .end local v296    # "maxNum":I
    :pswitch_29
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 722
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v97

    .line 723
    .local v97, "id":I
    move-object/from16 v0, p0

    move/from16 v1, v97

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getTaskThumbnail(I)Landroid/app/ActivityManager$TaskThumbnail;

    move-result-object v0

    move-object/16 v375, v0

    .line 724
    .local v375, "taskThumbnail":Landroid/app/ActivityManager$TaskThumbnail;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 725
    move-object/from16 v0, v375

    if-eqz v0, :cond_2d

    .line 726
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 727
    const/4 v6, 0x1

    move-object/from16 v0, v375

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/app/ActivityManager$TaskThumbnail;->writeToParcel(Landroid/os/Parcel;I)V

    .line 731
    :goto_25
    const/4 v6, 0x1

    return v6

    .line 729
    :cond_2d
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_25

    .line 735
    .end local v97    # "id":I
    .end local v375    # "taskThumbnail":Landroid/app/ActivityManager$TaskThumbnail;
    :pswitch_2a
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 736
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v296, v0

    .line 737
    .restart local v296    # "maxNum":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v106

    .line 738
    .restart local v106    # "fl":I
    move-object/from16 v0, p0

    move/from16 v1, v296

    move/from16 v2, v106

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->getServices(II)Ljava/util/List;

    move-result-object v0

    move-object/16 v286, v0

    .line 739
    .local v286, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 740
    move-object/from16 v0, v286

    if-eqz v0, :cond_2e

    invoke-interface/range {v286 .. v286}, Ljava/util/List;->size()I

    move-result v205

    .line 741
    .restart local v205    # "N":I
    :goto_26
    move-object/from16 v0, p3

    move/from16 v1, v205

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 743
    const/4 v0, 0x0

    move/16 v256, v0

    .restart local v256    # "i":I
    :goto_27
    move/from16 v0, v256

    move/from16 v1, v205

    if-ge v0, v1, :cond_2f

    .line 744
    move-object/from16 v0, v286

    move/from16 v1, v256

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object/16 v264, v0

    move-object/from16 v0, v264

    check-cast v0, Landroid/app/ActivityManager$RunningServiceInfo;

    move-object/16 v264, v0

    .line 745
    .local v264, "info":Landroid/app/ActivityManager$RunningServiceInfo;
    const/4 v6, 0x0

    move-object/from16 v0, v264

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/app/ActivityManager$RunningServiceInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 743
    move/from16 v0, v256

    add-int/lit8 v0, v0, 0x1

    move/16 v256, v0

    goto :goto_27

    .line 740
    .end local v205    # "N":I
    .end local v256    # "i":I
    .end local v264    # "info":Landroid/app/ActivityManager$RunningServiceInfo;
    :cond_2e
    const/16 v205, -0x1

    goto :goto_26

    .line 747
    .restart local v205    # "N":I
    .restart local v256    # "i":I
    :cond_2f
    const/4 v6, 0x1

    return v6

    .line 751
    .end local v106    # "fl":I
    .end local v205    # "N":I
    .end local v256    # "i":I
    .end local v286    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    .end local v296    # "maxNum":I
    :pswitch_2b
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 752
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getProcessesInErrorState()Ljava/util/List;

    move-result-object v0

    move-object/16 v284, v0

    .line 753
    .local v284, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$ProcessErrorStateInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 754
    move-object/from16 v0, p3

    move-object/from16 v1, v284

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 755
    const/4 v6, 0x1

    return v6

    .line 759
    .end local v284    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$ProcessErrorStateInfo;>;"
    :pswitch_2c
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 760
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    move-object/16 v285, v0

    .line 761
    .local v285, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 762
    move-object/from16 v0, p3

    move-object/from16 v1, v285

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 763
    const/4 v6, 0x1

    return v6

    .line 767
    .end local v285    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :pswitch_2d
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 768
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getRunningExternalApplications()Ljava/util/List;

    move-result-object v0

    move-object/16 v290, v0

    .line 769
    .local v290, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 770
    move-object/from16 v0, p3

    move-object/from16 v1, v290

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 771
    const/4 v6, 0x1

    return v6

    .line 775
    .end local v290    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    :pswitch_2e
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 776
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v373, v0

    .line 777
    .local v373, "task":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v106

    .line 778
    .restart local v106    # "fl":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_30

    .line 779
    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Bundle;

    move-object/from16 v16, v6

    .line 780
    .restart local v16    # "options":Landroid/os/Bundle;
    :goto_28
    move-object/from16 v0, p0

    move/from16 v1, v373

    move/from16 v2, v106

    move-object/from16 v3, v16

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->moveTaskToFront(IILandroid/os/Bundle;)V

    .line 781
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 782
    const/4 v6, 0x1

    return v6

    .line 779
    .end local v16    # "options":Landroid/os/Bundle;
    :cond_30
    const/16 v16, 0x0

    goto :goto_28

    .line 786
    .end local v106    # "fl":I
    .end local v373    # "task":I
    :pswitch_2f
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 787
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v96

    .line 788
    .restart local v96    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_31

    const/4 v0, 0x1

    move/16 v302, v0

    .line 789
    .local v302, "nonRoot":Z
    :goto_29
    move-object/from16 v0, p0

    move-object/from16 v1, v96

    move/from16 v2, v302

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->moveActivityTaskToBack(Landroid/os/IBinder;Z)Z

    move-result v0

    move/16 v342, v0

    .line 790
    .restart local v342    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 791
    move/from16 v0, v342

    if-eqz v0, :cond_32

    const/4 v6, 0x1

    :goto_2a
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 792
    const/4 v6, 0x1

    return v6

    .line 788
    .end local v302    # "nonRoot":Z
    .end local v342    # "res":Z
    :cond_31
    const/4 v0, 0x0

    move/16 v302, v0

    goto :goto_29

    .line 791
    .restart local v302    # "nonRoot":Z
    .restart local v342    # "res":Z
    :cond_32
    const/4 v6, 0x0

    goto :goto_2a

    .line 796
    .end local v96    # "token":Landroid/os/IBinder;
    .end local v302    # "nonRoot":Z
    .end local v342    # "res":Z
    :pswitch_30
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 797
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v373, v0

    .line 798
    .restart local v373    # "task":I
    move-object/from16 v0, p0

    move/from16 v1, v373

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->moveTaskBackwards(I)V

    .line 799
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 800
    const/4 v6, 0x1

    return v6

    .line 804
    .end local v373    # "task":I
    :pswitch_31
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 805
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v72

    .line 806
    .restart local v72    # "taskId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v79

    .line 807
    .local v79, "stackId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_33

    const/16 v74, 0x1

    .line 808
    .local v74, "toTop":Z
    :goto_2b
    move-object/from16 v0, p0

    move/from16 v1, v72

    move/from16 v2, v79

    move/from16 v3, v74

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->moveTaskToStack(IIZ)V

    .line 809
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 810
    const/4 v6, 0x1

    return v6

    .line 807
    .end local v74    # "toTop":Z
    :cond_33
    const/16 v74, 0x0

    goto :goto_2b

    .line 814
    .end local v72    # "taskId":I
    .end local v79    # "stackId":I
    :pswitch_32
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 815
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v72

    .line 816
    .restart local v72    # "taskId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v73

    .line 817
    .local v73, "createMode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_35

    const/16 v74, 0x1

    .line 818
    .local v74, "toTop":Z
    :goto_2c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_36

    const/16 v75, 0x1

    .line 819
    .local v75, "animate":Z
    :goto_2d
    const/16 v76, 0x0

    .line 820
    .local v76, "bounds":Landroid/graphics/Rect;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_37

    const/16 v247, 0x1

    .line 821
    .local v247, "hasBounds":Z
    :goto_2e
    if-eqz v247, :cond_34

    .line 822
    sget-object v6, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v76

    .end local v76    # "bounds":Landroid/graphics/Rect;
    check-cast v76, Landroid/graphics/Rect;

    .line 824
    :cond_34
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_38

    const/16 v77, 0x1

    .local v77, "moveHomeStackFront":Z
    :goto_2f
    move-object/from16 v71, p0

    .line 825
    invoke-virtual/range {v71 .. v77}, Landroid/app/ActivityManagerNative;->moveTaskToDockedStack(IIZZLandroid/graphics/Rect;Z)Z

    move-result v0

    move/16 v342, v0

    .line 827
    .restart local v342    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 828
    move/from16 v0, v342

    if-eqz v0, :cond_39

    const/4 v6, 0x1

    :goto_30
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 829
    const/4 v6, 0x1

    return v6

    .line 817
    .end local v74    # "toTop":Z
    .end local v75    # "animate":Z
    .end local v77    # "moveHomeStackFront":Z
    .end local v247    # "hasBounds":Z
    .end local v342    # "res":Z
    :cond_35
    const/16 v74, 0x0

    .restart local v74    # "toTop":Z
    goto :goto_2c

    .line 818
    :cond_36
    const/16 v75, 0x0

    .restart local v75    # "animate":Z
    goto :goto_2d

    .line 820
    .restart local v76    # "bounds":Landroid/graphics/Rect;
    :cond_37
    const/16 v247, 0x0

    goto :goto_2e

    .line 824
    .end local v76    # "bounds":Landroid/graphics/Rect;
    .restart local v247    # "hasBounds":Z
    :cond_38
    const/16 v77, 0x0

    goto :goto_2f

    .line 828
    .restart local v77    # "moveHomeStackFront":Z
    .restart local v342    # "res":Z
    :cond_39
    const/4 v6, 0x0

    goto :goto_30

    .line 833
    .end local v72    # "taskId":I
    .end local v73    # "createMode":I
    .end local v74    # "toTop":Z
    .end local v75    # "animate":Z
    .end local v77    # "moveHomeStackFront":Z
    .end local v247    # "hasBounds":Z
    .end local v342    # "res":Z
    :pswitch_33
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 834
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v79

    .line 835
    .restart local v79    # "stackId":I
    sget-object v6, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v80

    check-cast v80, Landroid/graphics/Rect;

    .line 836
    .local v80, "r":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    move/from16 v1, v79

    move-object/from16 v2, v80

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->moveTopActivityToPinnedStack(ILandroid/graphics/Rect;)Z

    move-result v0

    move/16 v342, v0

    .line 837
    .restart local v342    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 838
    move/from16 v0, v342

    if-eqz v0, :cond_3a

    const/4 v6, 0x1

    :goto_31
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 839
    const/4 v6, 0x1

    return v6

    .line 838
    :cond_3a
    const/4 v6, 0x0

    goto :goto_31

    .line 843
    .end local v79    # "stackId":I
    .end local v80    # "r":Landroid/graphics/Rect;
    .end local v342    # "res":Z
    :pswitch_34
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 844
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v79

    .line 845
    .restart local v79    # "stackId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_3c

    const/16 v248, 0x1

    .line 846
    .local v248, "hasRect":Z
    :goto_32
    const/16 v80, 0x0

    .line 847
    .local v80, "r":Landroid/graphics/Rect;
    if-eqz v248, :cond_3b

    .line 848
    sget-object v6, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v80

    .end local v80    # "r":Landroid/graphics/Rect;
    check-cast v80, Landroid/graphics/Rect;

    .line 850
    :cond_3b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v6, v0, :cond_3d

    const/16 v81, 0x1

    .line 851
    .local v81, "allowResizeInDockedMode":Z
    :goto_33
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v6, v0, :cond_3e

    const/16 v82, 0x1

    .line 852
    .local v82, "preserveWindows":Z
    :goto_34
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v6, v0, :cond_3f

    const/16 v75, 0x1

    .line 853
    .restart local v75    # "animate":Z
    :goto_35
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v84

    .local v84, "animationDuration":I
    move-object/from16 v78, p0

    move/from16 v83, v75

    .line 854
    invoke-virtual/range {v78 .. v84}, Landroid/app/ActivityManagerNative;->resizeStack(ILandroid/graphics/Rect;ZZZI)V

    .line 856
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 857
    const/4 v6, 0x1

    return v6

    .line 845
    .end local v75    # "animate":Z
    .end local v81    # "allowResizeInDockedMode":Z
    .end local v82    # "preserveWindows":Z
    .end local v84    # "animationDuration":I
    .end local v248    # "hasRect":Z
    :cond_3c
    const/16 v248, 0x0

    goto :goto_32

    .line 850
    .restart local v248    # "hasRect":Z
    :cond_3d
    const/16 v81, 0x0

    .restart local v81    # "allowResizeInDockedMode":Z
    goto :goto_33

    .line 851
    :cond_3e
    const/16 v82, 0x0

    .restart local v82    # "preserveWindows":Z
    goto :goto_34

    .line 852
    :cond_3f
    const/16 v75, 0x0

    .restart local v75    # "animate":Z
    goto :goto_35

    .line 860
    .end local v75    # "animate":Z
    .end local v79    # "stackId":I
    .end local v81    # "allowResizeInDockedMode":Z
    .end local v82    # "preserveWindows":Z
    .end local v248    # "hasRect":Z
    :pswitch_35
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 861
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_42

    const/16 v247, 0x1

    .line 862
    .restart local v247    # "hasBounds":Z
    :goto_36
    const/16 v76, 0x0

    .line 863
    .restart local v76    # "bounds":Landroid/graphics/Rect;
    if-eqz v247, :cond_40

    .line 864
    sget-object v6, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v76

    .end local v76    # "bounds":Landroid/graphics/Rect;
    check-cast v76, Landroid/graphics/Rect;

    .line 866
    :cond_40
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_43

    const/16 v253, 0x1

    .line 867
    .local v253, "hasTempPinnedTaskBounds":Z
    :goto_37
    const/4 v0, 0x0

    move-object/16 v376, v0

    .line 868
    .local v376, "tempPinnedTaskBounds":Landroid/graphics/Rect;
    if-eqz v253, :cond_41

    .line 869
    sget-object v6, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object/16 v376, v0

    .end local v376    # "tempPinnedTaskBounds":Landroid/graphics/Rect;
    move-object/from16 v0, v376

    check-cast v0, Landroid/graphics/Rect;

    move-object/16 v376, v0

    .line 871
    :cond_41
    move-object/from16 v0, p0

    move-object/from16 v1, v76

    move-object/from16 v2, v376

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->resizePinnedStack(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 872
    const/4 v6, 0x1

    return v6

    .line 861
    .end local v247    # "hasBounds":Z
    .end local v253    # "hasTempPinnedTaskBounds":Z
    :cond_42
    const/16 v247, 0x0

    goto :goto_36

    .line 866
    .restart local v247    # "hasBounds":Z
    :cond_43
    const/16 v253, 0x0

    goto :goto_37

    .line 875
    .end local v247    # "hasBounds":Z
    :pswitch_36
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 876
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->swapDockedAndFullscreenStack()V

    .line 877
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 878
    const/4 v6, 0x1

    return v6

    .line 881
    :pswitch_37
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 882
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_49

    const/16 v247, 0x1

    .line 883
    .restart local v247    # "hasBounds":Z
    :goto_38
    const/16 v76, 0x0

    .line 884
    .restart local v76    # "bounds":Landroid/graphics/Rect;
    if-eqz v247, :cond_44

    .line 885
    sget-object v6, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v76

    .end local v76    # "bounds":Landroid/graphics/Rect;
    check-cast v76, Landroid/graphics/Rect;

    .line 887
    :cond_44
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_4a

    const/16 v249, 0x1

    .line 888
    .local v249, "hasTempDockedTaskBounds":Z
    :goto_39
    const/16 v87, 0x0

    .line 889
    .local v87, "tempDockedTaskBounds":Landroid/graphics/Rect;
    if-eqz v249, :cond_45

    .line 890
    sget-object v6, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v87

    .end local v87    # "tempDockedTaskBounds":Landroid/graphics/Rect;
    check-cast v87, Landroid/graphics/Rect;

    .line 892
    :cond_45
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_4b

    const/16 v250, 0x1

    .line 893
    .local v250, "hasTempDockedTaskInsetBounds":Z
    :goto_3a
    const/16 v88, 0x0

    .line 894
    .local v88, "tempDockedTaskInsetBounds":Landroid/graphics/Rect;
    if-eqz v250, :cond_46

    .line 895
    sget-object v6, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v88

    .end local v88    # "tempDockedTaskInsetBounds":Landroid/graphics/Rect;
    check-cast v88, Landroid/graphics/Rect;

    .line 897
    :cond_46
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_4c

    const/16 v251, 0x1

    .line 898
    .local v251, "hasTempOtherTaskBounds":Z
    :goto_3b
    const/16 v89, 0x0

    .line 899
    .local v89, "tempOtherTaskBounds":Landroid/graphics/Rect;
    if-eqz v251, :cond_47

    .line 900
    sget-object v6, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v89

    .end local v89    # "tempOtherTaskBounds":Landroid/graphics/Rect;
    check-cast v89, Landroid/graphics/Rect;

    .line 902
    :cond_47
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_4d

    const/16 v252, 0x1

    .line 903
    .local v252, "hasTempOtherTaskInsetBounds":Z
    :goto_3c
    const/16 v90, 0x0

    .line 904
    .local v90, "tempOtherTaskInsetBounds":Landroid/graphics/Rect;
    if-eqz v252, :cond_48

    .line 905
    sget-object v6, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v90

    .end local v90    # "tempOtherTaskInsetBounds":Landroid/graphics/Rect;
    check-cast v90, Landroid/graphics/Rect;

    :cond_48
    move-object/from16 v85, p0

    move-object/from16 v86, v76

    .line 907
    invoke-virtual/range {v85 .. v90}, Landroid/app/ActivityManagerNative;->resizeDockedStack(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 909
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 910
    const/4 v6, 0x1

    return v6

    .line 882
    .end local v247    # "hasBounds":Z
    .end local v249    # "hasTempDockedTaskBounds":Z
    .end local v250    # "hasTempDockedTaskInsetBounds":Z
    .end local v251    # "hasTempOtherTaskBounds":Z
    .end local v252    # "hasTempOtherTaskInsetBounds":Z
    :cond_49
    const/16 v247, 0x0

    goto :goto_38

    .line 887
    .restart local v247    # "hasBounds":Z
    :cond_4a
    const/16 v249, 0x0

    goto :goto_39

    .line 892
    .restart local v249    # "hasTempDockedTaskBounds":Z
    :cond_4b
    const/16 v250, 0x0

    goto :goto_3a

    .line 897
    .restart local v250    # "hasTempDockedTaskInsetBounds":Z
    :cond_4c
    const/16 v251, 0x0

    goto :goto_3b

    .line 902
    .restart local v251    # "hasTempOtherTaskBounds":Z
    :cond_4d
    const/16 v252, 0x0

    goto :goto_3c

    .line 914
    .end local v247    # "hasBounds":Z
    .end local v249    # "hasTempDockedTaskBounds":Z
    .end local v250    # "hasTempDockedTaskInsetBounds":Z
    .end local v251    # "hasTempOtherTaskBounds":Z
    :pswitch_38
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 915
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v72

    .line 916
    .restart local v72    # "taskId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v79

    .line 917
    .restart local v79    # "stackId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v325, v0

    .line 918
    .local v325, "position":I
    move-object/from16 v0, p0

    move/from16 v1, v72

    move/from16 v2, v79

    move/from16 v3, v325

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->positionTaskInStack(III)V

    .line 919
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 920
    const/4 v6, 0x1

    return v6

    .line 924
    .end local v72    # "taskId":I
    .end local v79    # "stackId":I
    .end local v325    # "position":I
    :pswitch_39
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 925
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getAllStackInfos()Ljava/util/List;

    move-result-object v0

    move-object/16 v288, v0

    .line 926
    .local v288, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$StackInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 927
    move-object/from16 v0, p3

    move-object/from16 v1, v288

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 928
    const/4 v6, 0x1

    return v6

    .line 932
    .end local v288    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$StackInfo;>;"
    :pswitch_3a
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 933
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v79

    .line 934
    .restart local v79    # "stackId":I
    move-object/from16 v0, p0

    move/from16 v1, v79

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getStackInfo(I)Landroid/app/ActivityManager$StackInfo;

    move-result-object v0

    move-object/16 v266, v0

    .line 935
    .local v266, "info":Landroid/app/ActivityManager$StackInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 936
    move-object/from16 v0, v266

    if-eqz v0, :cond_4e

    .line 937
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 938
    const/4 v6, 0x0

    move-object/from16 v0, v266

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/app/ActivityManager$StackInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 942
    :goto_3d
    const/4 v6, 0x1

    return v6

    .line 940
    :cond_4e
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3d

    .line 946
    .end local v79    # "stackId":I
    .end local v266    # "info":Landroid/app/ActivityManager$StackInfo;
    :pswitch_3b
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 947
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v72

    .line 948
    .restart local v72    # "taskId":I
    move-object/from16 v0, p0

    move/from16 v1, v72

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->isInHomeStack(I)Z

    move-result v0

    move/16 v273, v0

    .line 949
    .local v273, "isInHomeStack":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 950
    move/from16 v0, v273

    if-eqz v0, :cond_4f

    const/4 v6, 0x1

    :goto_3e
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 951
    const/4 v6, 0x1

    return v6

    .line 950
    :cond_4f
    const/4 v6, 0x0

    goto :goto_3e

    .line 955
    .end local v72    # "taskId":I
    .end local v273    # "isInHomeStack":Z
    :pswitch_3c
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 956
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v79

    .line 957
    .restart local v79    # "stackId":I
    move-object/from16 v0, p0

    move/from16 v1, v79

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->setFocusedStack(I)V

    .line 958
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 959
    const/4 v6, 0x1

    return v6

    .line 963
    .end local v79    # "stackId":I
    :pswitch_3d
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 964
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getFocusedStackId()I

    move-result v245

    .line 965
    .local v245, "focusedStackId":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 966
    move-object/from16 v0, p3

    move/from16 v1, v245

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 967
    const/4 v6, 0x1

    return v6

    .line 971
    .end local v245    # "focusedStackId":I
    :pswitch_3e
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 972
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v72

    .line 973
    .restart local v72    # "taskId":I
    move-object/from16 v0, p0

    move/from16 v1, v72

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->setFocusedTask(I)V

    .line 974
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 975
    const/4 v6, 0x1

    return v6

    .line 979
    .end local v72    # "taskId":I
    :pswitch_3f
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 980
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v96

    .line 981
    .restart local v96    # "token":Landroid/os/IBinder;
    invoke-static/range {v96 .. v96}, Landroid/app/ITaskStackListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/ITaskStackListener;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/app/ActivityManagerNative;->registerTaskStackListener(Landroid/app/ITaskStackListener;)V

    .line 982
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 983
    const/4 v6, 0x1

    return v6

    .line 987
    .end local v96    # "token":Landroid/os/IBinder;
    :pswitch_40
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 988
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v96

    .line 989
    .restart local v96    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_50

    const/4 v0, 0x1

    move/16 v309, v0

    .line 990
    .local v309, "onlyRoot":Z
    :goto_3f
    if-eqz v96, :cond_51

    .line 991
    move-object/from16 v0, p0

    move-object/from16 v1, v96

    move/from16 v2, v309

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->getTaskForActivity(Landroid/os/IBinder;Z)I

    move-result v0

    move/16 v336, v0

    .line 992
    .restart local v336    # "res":I
    :goto_40
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 993
    move-object/from16 v0, p3

    move/from16 v1, v336

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 994
    const/4 v6, 0x1

    return v6

    .line 989
    .end local v309    # "onlyRoot":Z
    .end local v336    # "res":I
    :cond_50
    const/4 v0, 0x0

    move/16 v309, v0

    .restart local v309    # "onlyRoot":Z
    goto :goto_3f

    .line 991
    :cond_51
    const/4 v0, -0x1

    move/16 v336, v0

    .restart local v336    # "res":I
    goto :goto_40

    .line 998
    .end local v96    # "token":Landroid/os/IBinder;
    .end local v309    # "onlyRoot":Z
    .end local v336    # "res":I
    :pswitch_41
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 999
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v217

    .line 1000
    .restart local v217    # "b":Landroid/os/IBinder;
    invoke-static/range {v217 .. v217}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 1001
    .restart local v7    # "app":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v130

    .line 1002
    .local v130, "name":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1003
    .restart local v17    # "userId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_52

    const/4 v0, 0x1

    move/16 v364, v0

    .line 1004
    .local v364, "stable":Z
    :goto_41
    move-object/from16 v0, p0

    move-object/from16 v1, v130

    move/from16 v2, v17

    move/from16 v3, v364

    invoke-virtual {v0, v7, v1, v2, v3}, Landroid/app/ActivityManagerNative;->getContentProvider(Landroid/app/IApplicationThread;Ljava/lang/String;IZ)Landroid/app/IActivityManager$ContentProviderHolder;

    move-result-object v230

    .line 1005
    .local v230, "cph":Landroid/app/IActivityManager$ContentProviderHolder;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1006
    if-eqz v230, :cond_53

    .line 1007
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1008
    const/4 v6, 0x0

    move-object/from16 v0, v230

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/app/IActivityManager$ContentProviderHolder;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1012
    :goto_42
    const/4 v6, 0x1

    return v6

    .line 1003
    .end local v230    # "cph":Landroid/app/IActivityManager$ContentProviderHolder;
    .end local v364    # "stable":Z
    :cond_52
    const/4 v0, 0x0

    move/16 v364, v0

    goto :goto_41

    .line 1010
    .restart local v230    # "cph":Landroid/app/IActivityManager$ContentProviderHolder;
    .restart local v364    # "stable":Z
    :cond_53
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_42

    .line 1016
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .end local v17    # "userId":I
    .end local v130    # "name":Ljava/lang/String;
    .end local v217    # "b":Landroid/os/IBinder;
    .end local v230    # "cph":Landroid/app/IActivityManager$ContentProviderHolder;
    .end local v364    # "stable":Z
    :pswitch_42
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1017
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v130

    .line 1018
    .restart local v130    # "name":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1019
    .restart local v17    # "userId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v96

    .line 1020
    .restart local v96    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v130

    move/from16 v2, v17

    move-object/from16 v3, v96

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->getContentProviderExternal(Ljava/lang/String;ILandroid/os/IBinder;)Landroid/app/IActivityManager$ContentProviderHolder;

    move-result-object v230

    .line 1021
    .restart local v230    # "cph":Landroid/app/IActivityManager$ContentProviderHolder;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1022
    if-eqz v230, :cond_54

    .line 1023
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1024
    const/4 v6, 0x0

    move-object/from16 v0, v230

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/app/IActivityManager$ContentProviderHolder;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1028
    :goto_43
    const/4 v6, 0x1

    return v6

    .line 1026
    :cond_54
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_43

    .line 1032
    .end local v17    # "userId":I
    .end local v96    # "token":Landroid/os/IBinder;
    .end local v130    # "name":Ljava/lang/String;
    .end local v230    # "cph":Landroid/app/IActivityManager$ContentProviderHolder;
    :pswitch_43
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1033
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v217

    .line 1034
    .restart local v217    # "b":Landroid/os/IBinder;
    invoke-static/range {v217 .. v217}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 1036
    .restart local v7    # "app":Landroid/app/IApplicationThread;
    sget-object v6, Landroid/app/IActivityManager$ContentProviderHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    move-object/16 v328, v0

    .line 1037
    .local v328, "providers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/IActivityManager$ContentProviderHolder;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v328

    invoke-virtual {v0, v7, v1}, Landroid/app/ActivityManagerNative;->publishContentProviders(Landroid/app/IApplicationThread;Ljava/util/List;)V

    .line 1038
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1039
    const/4 v6, 0x1

    return v6

    .line 1043
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .end local v217    # "b":Landroid/os/IBinder;
    .end local v328    # "providers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/IActivityManager$ContentProviderHolder;>;"
    :pswitch_44
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1044
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v217

    .line 1045
    .restart local v217    # "b":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v363, v0

    .line 1046
    .local v363, "stable":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v381, v0

    .line 1047
    .local v381, "unstable":I
    move-object/from16 v0, p0

    move-object/from16 v1, v217

    move/from16 v2, v363

    move/from16 v3, v381

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->refContentProvider(Landroid/os/IBinder;II)Z

    move-result v0

    move/16 v342, v0

    .line 1048
    .restart local v342    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1049
    move/from16 v0, v342

    if-eqz v0, :cond_55

    const/4 v6, 0x1

    :goto_44
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1050
    const/4 v6, 0x1

    return v6

    .line 1049
    :cond_55
    const/4 v6, 0x0

    goto :goto_44

    .line 1054
    .end local v217    # "b":Landroid/os/IBinder;
    .end local v342    # "res":Z
    .end local v363    # "stable":I
    .end local v381    # "unstable":I
    :pswitch_45
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1055
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v217

    .line 1056
    .restart local v217    # "b":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v217

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->unstableProviderDied(Landroid/os/IBinder;)V

    .line 1057
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1058
    const/4 v6, 0x1

    return v6

    .line 1062
    .end local v217    # "b":Landroid/os/IBinder;
    :pswitch_46
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1063
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v217

    .line 1064
    .restart local v217    # "b":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v217

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->appNotRespondingViaProvider(Landroid/os/IBinder;)V

    .line 1065
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1066
    const/4 v6, 0x1

    return v6

    .line 1070
    .end local v217    # "b":Landroid/os/IBinder;
    :pswitch_47
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1071
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v217

    .line 1072
    .restart local v217    # "b":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_56

    const/4 v0, 0x1

    move/16 v364, v0

    .line 1073
    .restart local v364    # "stable":Z
    :goto_45
    move-object/from16 v0, p0

    move-object/from16 v1, v217

    move/from16 v2, v364

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->removeContentProvider(Landroid/os/IBinder;Z)V

    .line 1074
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1075
    const/4 v6, 0x1

    return v6

    .line 1072
    .end local v364    # "stable":Z
    :cond_56
    const/4 v0, 0x0

    move/16 v364, v0

    goto :goto_45

    .line 1079
    .end local v217    # "b":Landroid/os/IBinder;
    :pswitch_48
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1080
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v130

    .line 1081
    .restart local v130    # "name":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v96

    .line 1082
    .restart local v96    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v130

    move-object/from16 v2, v96

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->removeContentProviderExternal(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1083
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1084
    const/4 v6, 0x1

    return v6

    .line 1088
    .end local v96    # "token":Landroid/os/IBinder;
    .end local v130    # "name":Ljava/lang/String;
    :pswitch_49
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1089
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v227

    check-cast v227, Landroid/content/ComponentName;

    .line 1090
    .local v227, "comp":Landroid/content/ComponentName;
    move-object/from16 v0, p0

    move-object/from16 v1, v227

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getRunningServiceControlPanel(Landroid/content/ComponentName;)Landroid/app/PendingIntent;

    move-result-object v0

    move-object/16 v319, v0

    .line 1091
    .local v319, "pi":Landroid/app/PendingIntent;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1092
    move-object/from16 v0, v319

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Landroid/app/PendingIntent;->writePendingIntentOrNullToParcel(Landroid/app/PendingIntent;Landroid/os/Parcel;)V

    .line 1093
    const/4 v6, 0x1

    return v6

    .line 1097
    .end local v227    # "comp":Landroid/content/ComponentName;
    .end local v319    # "pi":Landroid/app/PendingIntent;
    :pswitch_4a
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1098
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v217

    .line 1099
    .restart local v217    # "b":Landroid/os/IBinder;
    invoke-static/range {v217 .. v217}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 1100
    .restart local v7    # "app":Landroid/app/IApplicationThread;
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v93

    check-cast v93, Landroid/content/Intent;

    .line 1101
    .local v93, "service":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 1102
    .restart local v10    # "resolvedType":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 1103
    .restart local v8    # "callingPackage":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .restart local v17    # "userId":I
    move-object/from16 v91, p0

    move-object/from16 v92, v7

    move-object/from16 v94, v10

    move-object/from16 v95, v8

    move/from16 v96, v17

    .line 1104
    invoke-virtual/range {v91 .. v96}, Landroid/app/ActivityManagerNative;->startService(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/ComponentName;

    move-result-object v226

    .line 1105
    .restart local v226    # "cn":Landroid/content/ComponentName;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1106
    move-object/from16 v0, v226

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Landroid/content/ComponentName;->writeToParcel(Landroid/content/ComponentName;Landroid/os/Parcel;)V

    .line 1107
    const/4 v6, 0x1

    return v6

    .line 1111
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .end local v8    # "callingPackage":Ljava/lang/String;
    .end local v10    # "resolvedType":Ljava/lang/String;
    .end local v17    # "userId":I
    .end local v93    # "service":Landroid/content/Intent;
    .end local v217    # "b":Landroid/os/IBinder;
    .end local v226    # "cn":Landroid/content/ComponentName;
    :pswitch_4b
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1112
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v217

    .line 1113
    .restart local v217    # "b":Landroid/os/IBinder;
    invoke-static/range {v217 .. v217}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 1114
    .restart local v7    # "app":Landroid/app/IApplicationThread;
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v93

    check-cast v93, Landroid/content/Intent;

    .line 1115
    .restart local v93    # "service":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 1116
    .restart local v10    # "resolvedType":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1117
    .restart local v17    # "userId":I
    move-object/from16 v0, p0

    move-object/from16 v1, v93

    move/from16 v2, v17

    invoke-virtual {v0, v7, v1, v10, v2}, Landroid/app/ActivityManagerNative;->stopService(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;I)I

    move-result v0

    move/16 v336, v0

    .line 1118
    .restart local v336    # "res":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1119
    move-object/from16 v0, p3

    move/from16 v1, v336

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1120
    const/4 v6, 0x1

    return v6

    .line 1124
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .end local v10    # "resolvedType":Ljava/lang/String;
    .end local v17    # "userId":I
    .end local v93    # "service":Landroid/content/Intent;
    .end local v217    # "b":Landroid/os/IBinder;
    .end local v336    # "res":I
    :pswitch_4c
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1125
    invoke-static/range {p2 .. p2}, Landroid/content/ComponentName;->readFromParcel(Landroid/os/Parcel;)Landroid/content/ComponentName;

    move-result-object v95

    .line 1126
    .local v95, "className":Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v96

    .line 1127
    .restart local v96    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v365, v0

    .line 1128
    .local v365, "startId":I
    move-object/from16 v0, p0

    move-object/from16 v1, v95

    move-object/from16 v2, v96

    move/from16 v3, v365

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->stopServiceToken(Landroid/content/ComponentName;Landroid/os/IBinder;I)Z

    move-result v0

    move/16 v342, v0

    .line 1129
    .restart local v342    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1130
    move/from16 v0, v342

    if-eqz v0, :cond_57

    const/4 v6, 0x1

    :goto_46
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1131
    const/4 v6, 0x1

    return v6

    .line 1130
    :cond_57
    const/4 v6, 0x0

    goto :goto_46

    .line 1135
    .end local v95    # "className":Landroid/content/ComponentName;
    .end local v96    # "token":Landroid/os/IBinder;
    .end local v342    # "res":Z
    .end local v365    # "startId":I
    :pswitch_4d
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1136
    invoke-static/range {p2 .. p2}, Landroid/content/ComponentName;->readFromParcel(Landroid/os/Parcel;)Landroid/content/ComponentName;

    move-result-object v95

    .line 1137
    .restart local v95    # "className":Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v96

    .line 1138
    .restart local v96    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v97

    .line 1139
    .restart local v97    # "id":I
    const/16 v98, 0x0

    .line 1140
    .local v98, "notification":Landroid/app/Notification;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_58

    .line 1141
    sget-object v6, Landroid/app/Notification;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v98

    .end local v98    # "notification":Landroid/app/Notification;
    check-cast v98, Landroid/app/Notification;

    .line 1143
    :cond_58
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v99

    .local v99, "sflags":I
    move-object/from16 v94, p0

    .line 1144
    invoke-virtual/range {v94 .. v99}, Landroid/app/ActivityManagerNative;->setServiceForeground(Landroid/content/ComponentName;Landroid/os/IBinder;ILandroid/app/Notification;I)V

    .line 1145
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1146
    const/4 v6, 0x1

    return v6

    .line 1150
    .end local v95    # "className":Landroid/content/ComponentName;
    .end local v96    # "token":Landroid/os/IBinder;
    .end local v97    # "id":I
    .end local v99    # "sflags":I
    :pswitch_4e
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1151
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v217

    .line 1152
    .restart local v217    # "b":Landroid/os/IBinder;
    invoke-static/range {v217 .. v217}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 1153
    .restart local v7    # "app":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v96

    .line 1154
    .restart local v96    # "token":Landroid/os/IBinder;
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v93

    check-cast v93, Landroid/content/Intent;

    .line 1155
    .restart local v93    # "service":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 1156
    .restart local v10    # "resolvedType":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v217

    .line 1157
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v106

    .line 1158
    .restart local v106    # "fl":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 1159
    .restart local v8    # "callingPackage":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1160
    .restart local v17    # "userId":I
    invoke-static/range {v217 .. v217}, Landroid/app/IServiceConnection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IServiceConnection;

    move-result-object v105

    .local v105, "conn":Landroid/app/IServiceConnection;
    move-object/from16 v100, p0

    move-object/from16 v101, v7

    move-object/from16 v102, v96

    move-object/from16 v103, v93

    move-object/from16 v104, v10

    move-object/from16 v107, v8

    move/from16 v108, v17

    .line 1161
    invoke-virtual/range {v100 .. v108}, Landroid/app/ActivityManagerNative;->bindService(Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/content/Intent;Ljava/lang/String;Landroid/app/IServiceConnection;ILjava/lang/String;I)I

    move-result v0

    move/16 v336, v0

    .line 1163
    .restart local v336    # "res":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1164
    move-object/from16 v0, p3

    move/from16 v1, v336

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1165
    const/4 v6, 0x1

    return v6

    .line 1169
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .end local v8    # "callingPackage":Ljava/lang/String;
    .end local v10    # "resolvedType":Ljava/lang/String;
    .end local v17    # "userId":I
    .end local v93    # "service":Landroid/content/Intent;
    .end local v96    # "token":Landroid/os/IBinder;
    .end local v105    # "conn":Landroid/app/IServiceConnection;
    .end local v106    # "fl":I
    .end local v217    # "b":Landroid/os/IBinder;
    .end local v336    # "res":I
    :pswitch_4f
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1170
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v217

    .line 1171
    .restart local v217    # "b":Landroid/os/IBinder;
    invoke-static/range {v217 .. v217}, Landroid/app/IServiceConnection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IServiceConnection;

    move-result-object v105

    .line 1172
    .restart local v105    # "conn":Landroid/app/IServiceConnection;
    move-object/from16 v0, p0

    move-object/from16 v1, v105

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->unbindService(Landroid/app/IServiceConnection;)Z

    move-result v0

    move/16 v342, v0

    .line 1173
    .restart local v342    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1174
    move/from16 v0, v342

    if-eqz v0, :cond_59

    const/4 v6, 0x1

    :goto_47
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1175
    const/4 v6, 0x1

    return v6

    .line 1174
    :cond_59
    const/4 v6, 0x0

    goto :goto_47

    .line 1179
    .end local v105    # "conn":Landroid/app/IServiceConnection;
    .end local v217    # "b":Landroid/os/IBinder;
    .end local v342    # "res":Z
    :pswitch_50
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1180
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v96

    .line 1181
    .restart local v96    # "token":Landroid/os/IBinder;
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/Intent;

    .line 1182
    .restart local v9    # "intent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    move-object/16 v355, v0

    .line 1183
    .local v355, "service":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v96

    move-object/from16 v2, v355

    invoke-virtual {v0, v1, v9, v2}, Landroid/app/ActivityManagerNative;->publishService(Landroid/os/IBinder;Landroid/content/Intent;Landroid/os/IBinder;)V

    .line 1184
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1185
    const/4 v6, 0x1

    return v6

    .line 1189
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v96    # "token":Landroid/os/IBinder;
    .end local v355    # "service":Landroid/os/IBinder;
    :pswitch_51
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1190
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v96

    .line 1191
    .restart local v96    # "token":Landroid/os/IBinder;
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/Intent;

    .line 1192
    .restart local v9    # "intent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_5a

    const/16 v235, 0x1

    .line 1193
    .local v235, "doRebind":Z
    :goto_48
    move-object/from16 v0, p0

    move-object/from16 v1, v96

    move/from16 v2, v235

    invoke-virtual {v0, v1, v9, v2}, Landroid/app/ActivityManagerNative;->unbindFinished(Landroid/os/IBinder;Landroid/content/Intent;Z)V

    .line 1194
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1195
    const/4 v6, 0x1

    return v6

    .line 1192
    .end local v235    # "doRebind":Z
    :cond_5a
    const/16 v235, 0x0

    goto :goto_48

    .line 1199
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v96    # "token":Landroid/os/IBinder;
    :pswitch_52
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1200
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v96

    .line 1201
    .restart local v96    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v117

    .line 1202
    .local v117, "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v365, v0

    .line 1203
    .restart local v365    # "startId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v336, v0

    .line 1204
    .restart local v336    # "res":I
    move-object/from16 v0, p0

    move-object/from16 v1, v96

    move/from16 v2, v117

    move/from16 v3, v365

    move/from16 v4, v336

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->serviceDoneExecuting(Landroid/os/IBinder;III)V

    .line 1205
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1206
    const/4 v6, 0x1

    return v6

    .line 1210
    .end local v96    # "token":Landroid/os/IBinder;
    .end local v117    # "type":I
    .end local v336    # "res":I
    .end local v365    # "startId":I
    :pswitch_53
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1211
    invoke-static/range {p2 .. p2}, Landroid/content/ComponentName;->readFromParcel(Landroid/os/Parcel;)Landroid/content/ComponentName;

    move-result-object v95

    .line 1212
    .restart local v95    # "className":Landroid/content/ComponentName;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v109

    .line 1213
    .local v109, "profileFile":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v106

    .line 1214
    .restart local v106    # "fl":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v111

    .line 1215
    .local v111, "arguments":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v217

    .line 1216
    .restart local v217    # "b":Landroid/os/IBinder;
    invoke-static/range {v217 .. v217}, Landroid/app/IInstrumentationWatcher$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IInstrumentationWatcher;

    move-result-object v112

    .line 1217
    .local v112, "w":Landroid/app/IInstrumentationWatcher;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v217

    .line 1218
    invoke-static/range {v217 .. v217}, Landroid/app/IUiAutomationConnection$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IUiAutomationConnection;

    move-result-object v113

    .line 1219
    .local v113, "c":Landroid/app/IUiAutomationConnection;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1220
    .restart local v17    # "userId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v115

    .local v115, "abiOverride":Ljava/lang/String;
    move-object/from16 v107, p0

    move-object/from16 v108, v95

    move/from16 v110, v106

    move/from16 v114, v17

    .line 1221
    invoke-virtual/range {v107 .. v115}, Landroid/app/ActivityManagerNative;->startInstrumentation(Landroid/content/ComponentName;Ljava/lang/String;ILandroid/os/Bundle;Landroid/app/IInstrumentationWatcher;Landroid/app/IUiAutomationConnection;ILjava/lang/String;)Z

    move-result v0

    move/16 v342, v0

    .line 1223
    .restart local v342    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1224
    move/from16 v0, v342

    if-eqz v0, :cond_5b

    const/4 v6, 0x1

    :goto_49
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1225
    const/4 v6, 0x1

    return v6

    .line 1224
    :cond_5b
    const/4 v6, 0x0

    goto :goto_49

    .line 1230
    .end local v17    # "userId":I
    .end local v95    # "className":Landroid/content/ComponentName;
    .end local v106    # "fl":I
    .end local v109    # "profileFile":Ljava/lang/String;
    .end local v111    # "arguments":Landroid/os/Bundle;
    .end local v112    # "w":Landroid/app/IInstrumentationWatcher;
    .end local v113    # "c":Landroid/app/IUiAutomationConnection;
    .end local v115    # "abiOverride":Ljava/lang/String;
    .end local v217    # "b":Landroid/os/IBinder;
    .end local v342    # "res":Z
    :pswitch_54
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1231
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v217

    .line 1232
    .restart local v217    # "b":Landroid/os/IBinder;
    invoke-static/range {v217 .. v217}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 1233
    .restart local v7    # "app":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v53

    .line 1234
    .restart local v53    # "resultCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    move-object/16 v351, v0

    .line 1235
    .local v351, "results":Landroid/os/Bundle;
    move-object/from16 v0, p0

    move/from16 v1, v53

    move-object/from16 v2, v351

    invoke-virtual {v0, v7, v1, v2}, Landroid/app/ActivityManagerNative;->finishInstrumentation(Landroid/app/IApplicationThread;ILandroid/os/Bundle;)V

    .line 1236
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1237
    const/4 v6, 0x1

    return v6

    .line 1241
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .end local v53    # "resultCode":I
    .end local v217    # "b":Landroid/os/IBinder;
    .end local v351    # "results":Landroid/os/Bundle;
    :pswitch_55
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1242
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v39

    .line 1243
    .local v39, "config":Landroid/content/res/Configuration;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1244
    const/4 v6, 0x0

    move-object/from16 v0, v39

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/res/Configuration;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1245
    const/4 v6, 0x1

    return v6

    .line 1249
    .end local v39    # "config":Landroid/content/res/Configuration;
    :pswitch_56
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1250
    sget-object v6, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Landroid/content/res/Configuration;

    .line 1251
    .restart local v39    # "config":Landroid/content/res/Configuration;
    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->updateConfiguration(Landroid/content/res/Configuration;)V

    .line 1252
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1253
    const/4 v6, 0x1

    return v6

    .line 1257
    .end local v39    # "config":Landroid/content/res/Configuration;
    :pswitch_57
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1258
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v96

    .line 1259
    .restart local v96    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v335, v0

    .line 1260
    .local v335, "requestedOrientation":I
    move-object/from16 v0, p0

    move-object/from16 v1, v96

    move/from16 v2, v335

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->setRequestedOrientation(Landroid/os/IBinder;I)V

    .line 1261
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1262
    const/4 v6, 0x1

    return v6

    .line 1266
    .end local v96    # "token":Landroid/os/IBinder;
    .end local v335    # "requestedOrientation":I
    :pswitch_58
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1267
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v96

    .line 1268
    .restart local v96    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v96

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getRequestedOrientation(Landroid/os/IBinder;)I

    move-result v0

    move/16 v333, v0

    .line 1269
    .local v333, "req":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1270
    move-object/from16 v0, p3

    move/from16 v1, v333

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1271
    const/4 v6, 0x1

    return v6

    .line 1275
    .end local v96    # "token":Landroid/os/IBinder;
    .end local v333    # "req":I
    :pswitch_59
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1276
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v96

    .line 1277
    .restart local v96    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v96

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getActivityClassForToken(Landroid/os/IBinder;)Landroid/content/ComponentName;

    move-result-object v226

    .line 1278
    .restart local v226    # "cn":Landroid/content/ComponentName;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1279
    move-object/from16 v0, v226

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Landroid/content/ComponentName;->writeToParcel(Landroid/content/ComponentName;Landroid/os/Parcel;)V

    .line 1280
    const/4 v6, 0x1

    return v6

    .line 1284
    .end local v96    # "token":Landroid/os/IBinder;
    .end local v226    # "cn":Landroid/content/ComponentName;
    :pswitch_5a
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1285
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v96

    .line 1286
    .restart local v96    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1287
    move-object/from16 v0, p0

    move-object/from16 v1, v96

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getPackageForToken(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1288
    const/4 v6, 0x1

    return v6

    .line 1292
    .end local v96    # "token":Landroid/os/IBinder;
    :pswitch_5b
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1293
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v117

    .line 1294
    .restart local v117    # "type":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v32

    .line 1295
    .restart local v32    # "packageName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v96

    .line 1296
    .restart local v96    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 1297
    .restart local v12    # "resultWho":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 1300
    .restart local v13    # "requestCode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_5c

    .line 1301
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v122

    check-cast v122, [Landroid/content/Intent;

    .line 1302
    .local v122, "requestIntents":[Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v123

    .line 1307
    .end local v122    # "requestIntents":[Landroid/content/Intent;
    :goto_4a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v106

    .line 1308
    .restart local v106    # "fl":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_5d

    .line 1309
    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/os/Bundle;

    .line 1310
    :goto_4b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .restart local v17    # "userId":I
    move-object/from16 v116, p0

    move-object/from16 v118, v32

    move-object/from16 v119, v96

    move-object/from16 v120, v12

    move/from16 v121, v13

    move/from16 v124, v106

    move-object/from16 v125, v16

    move/from16 v126, v17

    .line 1311
    invoke-virtual/range {v116 .. v126}, Landroid/app/ActivityManagerNative;->getIntentSender(ILjava/lang/String;Landroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;I)Landroid/content/IIntentSender;

    move-result-object v0

    move-object/16 v337, v0

    .line 1314
    .local v337, "res":Landroid/content/IIntentSender;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1315
    move-object/from16 v0, v337

    if-eqz v0, :cond_5e

    invoke-interface/range {v337 .. v337}, Landroid/content/IIntentSender;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    :goto_4c
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1316
    const/4 v6, 0x1

    return v6

    .line 1304
    .end local v17    # "userId":I
    .end local v106    # "fl":I
    .end local v337    # "res":Landroid/content/IIntentSender;
    :cond_5c
    const/16 v122, 0x0

    .line 1305
    .local v122, "requestIntents":[Landroid/content/Intent;
    const/16 v123, 0x0

    .local v123, "requestResolvedTypes":[Ljava/lang/String;
    goto :goto_4a

    .line 1309
    .end local v122    # "requestIntents":[Landroid/content/Intent;
    .end local v123    # "requestResolvedTypes":[Ljava/lang/String;
    .restart local v106    # "fl":I
    :cond_5d
    const/16 v16, 0x0

    .local v16, "options":Landroid/os/Bundle;
    goto :goto_4b

    .line 1315
    .end local v16    # "options":Landroid/os/Bundle;
    .restart local v17    # "userId":I
    .restart local v337    # "res":Landroid/content/IIntentSender;
    :cond_5e
    const/4 v6, 0x0

    goto :goto_4c

    .line 1320
    .end local v12    # "resultWho":Ljava/lang/String;
    .end local v13    # "requestCode":I
    .end local v17    # "userId":I
    .end local v32    # "packageName":Ljava/lang/String;
    .end local v96    # "token":Landroid/os/IBinder;
    .end local v106    # "fl":I
    .end local v117    # "type":I
    .end local v337    # "res":Landroid/content/IIntentSender;
    :pswitch_5c
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1322
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 1321
    invoke-static {v6}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v0

    move-object/16 v331, v0

    .line 1323
    .local v331, "r":Landroid/content/IIntentSender;
    move-object/from16 v0, p0

    move-object/from16 v1, v331

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->cancelIntentSender(Landroid/content/IIntentSender;)V

    .line 1324
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1325
    const/4 v6, 0x1

    return v6

    .line 1329
    .end local v331    # "r":Landroid/content/IIntentSender;
    :pswitch_5d
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1331
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 1330
    invoke-static {v6}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v0

    move-object/16 v331, v0

    .line 1332
    .restart local v331    # "r":Landroid/content/IIntentSender;
    move-object/from16 v0, p0

    move-object/from16 v1, v331

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getPackageForIntentSender(Landroid/content/IIntentSender;)Ljava/lang/String;

    move-result-object v0

    move-object/16 v341, v0

    .line 1333
    .local v341, "res":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1334
    move-object/from16 v0, p3

    move-object/from16 v1, v341

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1335
    const/4 v6, 0x1

    return v6

    .line 1339
    .end local v331    # "r":Landroid/content/IIntentSender;
    .end local v341    # "res":Ljava/lang/String;
    :pswitch_5e
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1341
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 1340
    invoke-static {v6}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v0

    move-object/16 v331, v0

    .line 1342
    .restart local v331    # "r":Landroid/content/IIntentSender;
    move-object/from16 v0, p0

    move-object/from16 v1, v331

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getUidForIntentSender(Landroid/content/IIntentSender;)I

    move-result v0

    move/16 v336, v0

    .line 1343
    .restart local v336    # "res":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1344
    move-object/from16 v0, p3

    move/from16 v1, v336

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1345
    const/4 v6, 0x1

    return v6

    .line 1349
    .end local v331    # "r":Landroid/content/IIntentSender;
    .end local v336    # "res":I
    :pswitch_5f
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1350
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v42

    .line 1351
    .restart local v42    # "callingPid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v43

    .line 1352
    .restart local v43    # "callingUid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1353
    .restart local v17    # "userId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_5f

    const/16 v128, 0x1

    .line 1354
    .local v128, "allowAll":Z
    :goto_4d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_60

    const/16 v129, 0x1

    .line 1355
    .local v129, "requireFull":Z
    :goto_4e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v130

    .line 1356
    .restart local v130    # "name":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v131

    .local v131, "callerPackage":Ljava/lang/String;
    move-object/from16 v124, p0

    move/from16 v125, v42

    move/from16 v126, v43

    move/from16 v127, v17

    .line 1357
    invoke-virtual/range {v124 .. v131}, Landroid/app/ActivityManagerNative;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v0

    move/16 v336, v0

    .line 1359
    .restart local v336    # "res":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1360
    move-object/from16 v0, p3

    move/from16 v1, v336

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1361
    const/4 v6, 0x1

    return v6

    .line 1353
    .end local v128    # "allowAll":Z
    .end local v129    # "requireFull":Z
    .end local v130    # "name":Ljava/lang/String;
    .end local v131    # "callerPackage":Ljava/lang/String;
    .end local v336    # "res":I
    :cond_5f
    const/16 v128, 0x0

    .restart local v128    # "allowAll":Z
    goto :goto_4d

    .line 1354
    :cond_60
    const/16 v129, 0x0

    .restart local v129    # "requireFull":Z
    goto :goto_4e

    .line 1365
    .end local v17    # "userId":I
    .end local v42    # "callingPid":I
    .end local v43    # "callingUid":I
    .end local v128    # "allowAll":Z
    .end local v129    # "requireFull":Z
    :pswitch_60
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1366
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v295, v0

    .line 1367
    .local v295, "max":I
    move-object/from16 v0, p0

    move/from16 v1, v295

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->setProcessLimit(I)V

    .line 1368
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1369
    const/4 v6, 0x1

    return v6

    .line 1373
    .end local v295    # "max":I
    :pswitch_61
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1374
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getProcessLimit()I

    move-result v0

    move/16 v279, v0

    .line 1375
    .local v279, "limit":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1376
    move-object/from16 v0, p3

    move/from16 v1, v279

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1377
    const/4 v6, 0x1

    return v6

    .line 1381
    .end local v279    # "limit":I
    :pswitch_62
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1382
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v96

    .line 1383
    .restart local v96    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v134

    .line 1384
    .local v134, "pid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_61

    const/4 v0, 0x1

    move/16 v272, v0

    .line 1385
    .local v272, "isForeground":Z
    :goto_4f
    move-object/from16 v0, p0

    move-object/from16 v1, v96

    move/from16 v2, v134

    move/from16 v3, v272

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->setProcessForeground(Landroid/os/IBinder;IZ)V

    .line 1386
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1387
    const/4 v6, 0x1

    return v6

    .line 1384
    .end local v272    # "isForeground":Z
    :cond_61
    const/4 v0, 0x0

    move/16 v272, v0

    goto :goto_4f

    .line 1391
    .end local v96    # "token":Landroid/os/IBinder;
    .end local v134    # "pid":I
    :pswitch_63
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1392
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v35

    .line 1393
    .restart local v35    # "perm":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v134

    .line 1394
    .restart local v134    # "pid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v135

    .line 1395
    .local v135, "uid":I
    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move/from16 v2, v134

    move/from16 v3, v135

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    move/16 v336, v0

    .line 1396
    .restart local v336    # "res":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1397
    move-object/from16 v0, p3

    move/from16 v1, v336

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1398
    const/4 v6, 0x1

    return v6

    .line 1402
    .end local v35    # "perm":Ljava/lang/String;
    .end local v134    # "pid":I
    .end local v135    # "uid":I
    .end local v336    # "res":I
    :pswitch_64
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1403
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v35

    .line 1404
    .restart local v35    # "perm":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v134

    .line 1405
    .restart local v134    # "pid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v135

    .line 1406
    .restart local v135    # "uid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v96

    .line 1407
    .restart local v96    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move/from16 v2, v134

    move/from16 v3, v135

    move-object/from16 v4, v96

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->checkPermissionWithToken(Ljava/lang/String;IILandroid/os/IBinder;)I

    move-result v0

    move/16 v336, v0

    .line 1408
    .restart local v336    # "res":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1409
    move-object/from16 v0, p3

    move/from16 v1, v336

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1410
    const/4 v6, 0x1

    return v6

    .line 1414
    .end local v35    # "perm":Ljava/lang/String;
    .end local v96    # "token":Landroid/os/IBinder;
    .end local v134    # "pid":I
    .end local v135    # "uid":I
    .end local v336    # "res":I
    :pswitch_65
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1415
    sget-object v6, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v133

    check-cast v133, Landroid/net/Uri;

    .line 1416
    .local v133, "uri":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v134

    .line 1417
    .restart local v134    # "pid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v135

    .line 1418
    .restart local v135    # "uid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v136

    .line 1419
    .local v136, "mode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1420
    .restart local v17    # "userId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v138

    .local v138, "callerToken":Landroid/os/IBinder;
    move-object/from16 v132, p0

    move/from16 v137, v17

    .line 1421
    invoke-virtual/range {v132 .. v138}, Landroid/app/ActivityManagerNative;->checkUriPermission(Landroid/net/Uri;IIIILandroid/os/IBinder;)I

    move-result v0

    move/16 v336, v0

    .line 1422
    .restart local v336    # "res":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1423
    move-object/from16 v0, p3

    move/from16 v1, v336

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1424
    const/4 v6, 0x1

    return v6

    .line 1428
    .end local v17    # "userId":I
    .end local v133    # "uri":Landroid/net/Uri;
    .end local v134    # "pid":I
    .end local v135    # "uid":I
    .end local v136    # "mode":I
    .end local v138    # "callerToken":Landroid/os/IBinder;
    .end local v336    # "res":I
    :pswitch_66
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1429
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v32

    .line 1431
    .restart local v32    # "packageName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 1430
    invoke-static {v6}, Landroid/content/pm/IPackageDataObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageDataObserver;

    move-result-object v0

    move-object/16 v306, v0

    .line 1432
    .local v306, "observer":Landroid/content/pm/IPackageDataObserver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1433
    .restart local v17    # "userId":I
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v306

    move/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;I)Z

    move-result v0

    move/16 v342, v0

    .line 1434
    .restart local v342    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1435
    move/from16 v0, v342

    if-eqz v0, :cond_62

    const/4 v6, 0x1

    :goto_50
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1436
    const/4 v6, 0x1

    return v6

    .line 1435
    :cond_62
    const/4 v6, 0x0

    goto :goto_50

    .line 1440
    .end local v17    # "userId":I
    .end local v32    # "packageName":Ljava/lang/String;
    .end local v306    # "observer":Landroid/content/pm/IPackageDataObserver;
    .end local v342    # "res":Z
    :pswitch_67
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1441
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v217

    .line 1442
    .restart local v217    # "b":Landroid/os/IBinder;
    invoke-static/range {v217 .. v217}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 1443
    .restart local v7    # "app":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v141

    .line 1444
    .local v141, "targetPkg":Ljava/lang/String;
    sget-object v6, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v133

    check-cast v133, Landroid/net/Uri;

    .line 1445
    .restart local v133    # "uri":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v136

    .line 1446
    .restart local v136    # "mode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .restart local v17    # "userId":I
    move-object/from16 v139, p0

    move-object/from16 v140, v7

    move-object/from16 v142, v133

    move/from16 v143, v136

    move/from16 v144, v17

    .line 1447
    invoke-virtual/range {v139 .. v144}, Landroid/app/ActivityManagerNative;->grantUriPermission(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/net/Uri;II)V

    .line 1448
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1449
    const/4 v6, 0x1

    return v6

    .line 1453
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .end local v17    # "userId":I
    .end local v133    # "uri":Landroid/net/Uri;
    .end local v136    # "mode":I
    .end local v141    # "targetPkg":Ljava/lang/String;
    .end local v217    # "b":Landroid/os/IBinder;
    :pswitch_68
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1454
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v217

    .line 1455
    .restart local v217    # "b":Landroid/os/IBinder;
    invoke-static/range {v217 .. v217}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 1456
    .restart local v7    # "app":Landroid/app/IApplicationThread;
    sget-object v6, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v133

    check-cast v133, Landroid/net/Uri;

    .line 1457
    .restart local v133    # "uri":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v136

    .line 1458
    .restart local v136    # "mode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1459
    .restart local v17    # "userId":I
    move-object/from16 v0, p0

    move-object/from16 v1, v133

    move/from16 v2, v136

    move/from16 v3, v17

    invoke-virtual {v0, v7, v1, v2, v3}, Landroid/app/ActivityManagerNative;->revokeUriPermission(Landroid/app/IApplicationThread;Landroid/net/Uri;II)V

    .line 1460
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1461
    const/4 v6, 0x1

    return v6

    .line 1465
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .end local v17    # "userId":I
    .end local v133    # "uri":Landroid/net/Uri;
    .end local v136    # "mode":I
    .end local v217    # "b":Landroid/os/IBinder;
    :pswitch_69
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1466
    sget-object v6, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v133

    check-cast v133, Landroid/net/Uri;

    .line 1467
    .restart local v133    # "uri":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v136

    .line 1468
    .restart local v136    # "mode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1469
    .restart local v17    # "userId":I
    move-object/from16 v0, p0

    move-object/from16 v1, v133

    move/from16 v2, v136

    move/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->takePersistableUriPermission(Landroid/net/Uri;II)V

    .line 1470
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1471
    const/4 v6, 0x1

    return v6

    .line 1475
    .end local v17    # "userId":I
    .end local v133    # "uri":Landroid/net/Uri;
    .end local v136    # "mode":I
    :pswitch_6a
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1476
    sget-object v6, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v133

    check-cast v133, Landroid/net/Uri;

    .line 1477
    .restart local v133    # "uri":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v136

    .line 1478
    .restart local v136    # "mode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1479
    .restart local v17    # "userId":I
    move-object/from16 v0, p0

    move-object/from16 v1, v133

    move/from16 v2, v136

    move/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->releasePersistableUriPermission(Landroid/net/Uri;II)V

    .line 1480
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1481
    const/4 v6, 0x1

    return v6

    .line 1485
    .end local v17    # "userId":I
    .end local v133    # "uri":Landroid/net/Uri;
    .end local v136    # "mode":I
    :pswitch_6b
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1486
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v32

    .line 1487
    .restart local v32    # "packageName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_63

    const/4 v0, 0x1

    move/16 v262, v0

    .line 1488
    .local v262, "incoming":Z
    :goto_51
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move/from16 v2, v262

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->getPersistedUriPermissions(Ljava/lang/String;Z)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    move-object/16 v316, v0

    .line 1490
    .local v316, "perms":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/UriPermission;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1491
    const/4 v6, 0x1

    move-object/from16 v0, v316

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1492
    const/4 v6, 0x1

    return v6

    .line 1487
    .end local v262    # "incoming":Z
    .end local v316    # "perms":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/UriPermission;>;"
    :cond_63
    const/4 v0, 0x0

    move/16 v262, v0

    goto :goto_51

    .line 1496
    .end local v32    # "packageName":Ljava/lang/String;
    :pswitch_6c
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1497
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v32

    .line 1498
    .restart local v32    # "packageName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1499
    .restart local v17    # "userId":I
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->getGrantedUriPermissions(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    move-object/16 v316, v0

    .line 1501
    .restart local v316    # "perms":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/UriPermission;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1502
    const/4 v6, 0x1

    move-object/from16 v0, v316

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/pm/ParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1503
    const/4 v6, 0x1

    return v6

    .line 1507
    .end local v17    # "userId":I
    .end local v32    # "packageName":Ljava/lang/String;
    .end local v316    # "perms":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/UriPermission;>;"
    :pswitch_6d
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1508
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v32

    .line 1509
    .restart local v32    # "packageName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1510
    .restart local v17    # "userId":I
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->clearGrantedUriPermissions(Ljava/lang/String;I)V

    .line 1511
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1512
    const/4 v6, 0x1

    return v6

    .line 1516
    .end local v17    # "userId":I
    .end local v32    # "packageName":Ljava/lang/String;
    :pswitch_6e
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1517
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v217

    .line 1518
    .restart local v217    # "b":Landroid/os/IBinder;
    invoke-static/range {v217 .. v217}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 1519
    .restart local v7    # "app":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_64

    const/4 v0, 0x1

    move/16 v388, v0

    .line 1520
    .local v388, "waiting":Z
    :goto_52
    move-object/from16 v0, p0

    move/from16 v1, v388

    invoke-virtual {v0, v7, v1}, Landroid/app/ActivityManagerNative;->showWaitingForDebugger(Landroid/app/IApplicationThread;Z)V

    .line 1521
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1522
    const/4 v6, 0x1

    return v6

    .line 1519
    .end local v388    # "waiting":Z
    :cond_64
    const/4 v0, 0x0

    move/16 v388, v0

    goto :goto_52

    .line 1526
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .end local v217    # "b":Landroid/os/IBinder;
    :pswitch_6f
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1527
    new-instance v0, Landroid/app/ActivityManager$MemoryInfo;

    move-object/16 v298, v0

    invoke-direct/range {v298 .. v298}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 1528
    .local v298, "mi":Landroid/app/ActivityManager$MemoryInfo;
    move-object/from16 v0, p0

    move-object/from16 v1, v298

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 1529
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1530
    const/4 v6, 0x0

    move-object/from16 v0, v298

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/app/ActivityManager$MemoryInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1531
    const/4 v6, 0x1

    return v6

    .line 1535
    .end local v298    # "mi":Landroid/app/ActivityManager$MemoryInfo;
    :pswitch_70
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1536
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->unhandledBack()V

    .line 1537
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1538
    const/4 v6, 0x1

    return v6

    .line 1542
    :pswitch_71
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1543
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v133

    .line 1544
    .restart local v133    # "uri":Landroid/net/Uri;
    move-object/from16 v0, p0

    move-object/from16 v1, v133

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->openContentUri(Landroid/net/Uri;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    move-object/16 v318, v0

    .line 1545
    .local v318, "pfd":Landroid/os/ParcelFileDescriptor;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1546
    move-object/from16 v0, v318

    if-eqz v0, :cond_65

    .line 1547
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1548
    const/4 v6, 0x1

    move-object/from16 v0, v318

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1552
    :goto_53
    const/4 v6, 0x1

    return v6

    .line 1550
    :cond_65
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_53

    .line 1556
    .end local v133    # "uri":Landroid/net/Uri;
    .end local v318    # "pfd":Landroid/os/ParcelFileDescriptor;
    :pswitch_72
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1557
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_66

    const/4 v0, 0x1

    move/16 v357, v0

    .line 1558
    .local v357, "showing":Z
    :goto_54
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_67

    const/4 v0, 0x1

    move/16 v307, v0

    .line 1559
    .local v307, "occluded":Z
    :goto_55
    move-object/from16 v0, p0

    move/from16 v1, v357

    move/from16 v2, v307

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->setLockScreenShown(ZZ)V

    .line 1560
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1561
    const/4 v6, 0x1

    return v6

    .line 1557
    .end local v307    # "occluded":Z
    .end local v357    # "showing":Z
    :cond_66
    const/4 v0, 0x0

    move/16 v357, v0

    .restart local v357    # "showing":Z
    goto :goto_54

    .line 1558
    :cond_67
    const/4 v0, 0x0

    move/16 v307, v0

    goto :goto_55

    .line 1565
    .end local v357    # "showing":Z
    :pswitch_73
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1566
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    move-object/16 v324, v0

    .line 1567
    .local v324, "pn":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_68

    const/4 v0, 0x1

    move/16 v390, v0

    .line 1568
    .local v390, "wfd":Z
    :goto_56
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_69

    const/4 v0, 0x1

    move/16 v314, v0

    .line 1569
    .local v314, "per":Z
    :goto_57
    move-object/from16 v0, p0

    move-object/from16 v1, v324

    move/from16 v2, v390

    move/from16 v3, v314

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->setDebugApp(Ljava/lang/String;ZZ)V

    .line 1570
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1571
    const/4 v6, 0x1

    return v6

    .line 1567
    .end local v314    # "per":Z
    .end local v390    # "wfd":Z
    :cond_68
    const/4 v0, 0x0

    move/16 v390, v0

    .restart local v390    # "wfd":Z
    goto :goto_56

    .line 1568
    :cond_69
    const/4 v0, 0x0

    move/16 v314, v0

    goto :goto_57

    .line 1575
    .end local v324    # "pn":Ljava/lang/String;
    .end local v390    # "wfd":Z
    :pswitch_74
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1576
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_6a

    const/16 v238, 0x1

    .line 1577
    .local v238, "enabled":Z
    :goto_58
    move-object/from16 v0, p0

    move/from16 v1, v238

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->setAlwaysFinish(Z)V

    .line 1578
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1579
    const/4 v6, 0x1

    return v6

    .line 1576
    .end local v238    # "enabled":Z
    :cond_6a
    const/16 v238, 0x0

    goto :goto_58

    .line 1583
    :pswitch_75
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1585
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 1584
    invoke-static {v6}, Landroid/app/IActivityController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IActivityController;

    move-result-object v0

    move-object/16 v389, v0

    .line 1586
    .local v389, "watcher":Landroid/app/IActivityController;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_6b

    const/4 v0, 0x1

    move/16 v258, v0

    .line 1587
    .local v258, "imAMonkey":Z
    :goto_59
    move-object/from16 v0, p0

    move-object/from16 v1, v389

    move/from16 v2, v258

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->setActivityController(Landroid/app/IActivityController;Z)V

    .line 1588
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1589
    const/4 v6, 0x1

    return v6

    .line 1586
    .end local v258    # "imAMonkey":Z
    :cond_6b
    const/4 v0, 0x0

    move/16 v258, v0

    goto :goto_59

    .line 1593
    .end local v389    # "watcher":Landroid/app/IActivityController;
    :pswitch_76
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1594
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_6c

    const/16 v238, 0x1

    .line 1595
    .restart local v238    # "enabled":Z
    :goto_5a
    move-object/from16 v0, p0

    move/from16 v1, v238

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->setLenientBackgroundCheck(Z)V

    .line 1596
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1597
    const/4 v6, 0x1

    return v6

    .line 1594
    .end local v238    # "enabled":Z
    :cond_6c
    const/16 v238, 0x0

    goto :goto_5a

    .line 1601
    :pswitch_77
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1602
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getMemoryTrimLevel()I

    move-result v0

    move/16 v278, v0

    .line 1603
    .local v278, "level":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1604
    move-object/from16 v0, p3

    move/from16 v1, v278

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1605
    const/4 v6, 0x1

    return v6

    .line 1609
    .end local v278    # "level":I
    :pswitch_78
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1610
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->enterSafeMode()V

    .line 1611
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1612
    const/4 v6, 0x1

    return v6

    .line 1616
    :pswitch_79
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1618
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 1617
    invoke-static {v6}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v0

    move-object/16 v271, v0

    .line 1619
    .local v271, "is":Landroid/content/IIntentSender;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v362, v0

    .line 1620
    .local v362, "sourceUid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    move-object/16 v361, v0

    .line 1621
    .local v361, "sourcePkg":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    move-object/16 v371, v0

    .line 1622
    .local v371, "tag":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v271

    move/from16 v2, v362

    move-object/from16 v3, v361

    move-object/from16 v4, v371

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->noteWakeupAlarm(Landroid/content/IIntentSender;ILjava/lang/String;Ljava/lang/String;)V

    .line 1623
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1624
    const/4 v6, 0x1

    return v6

    .line 1628
    .end local v271    # "is":Landroid/content/IIntentSender;
    .end local v361    # "sourcePkg":Ljava/lang/String;
    .end local v362    # "sourceUid":I
    .end local v371    # "tag":Ljava/lang/String;
    :pswitch_7a
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1630
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 1629
    invoke-static {v6}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v0

    move-object/16 v271, v0

    .line 1631
    .restart local v271    # "is":Landroid/content/IIntentSender;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v362, v0

    .line 1632
    .restart local v362    # "sourceUid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    move-object/16 v371, v0

    .line 1633
    .restart local v371    # "tag":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v271

    move/from16 v2, v362

    move-object/from16 v3, v371

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->noteAlarmStart(Landroid/content/IIntentSender;ILjava/lang/String;)V

    .line 1634
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1635
    const/4 v6, 0x1

    return v6

    .line 1639
    .end local v271    # "is":Landroid/content/IIntentSender;
    .end local v362    # "sourceUid":I
    .end local v371    # "tag":Ljava/lang/String;
    :pswitch_7b
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1641
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 1640
    invoke-static {v6}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v0

    move-object/16 v271, v0

    .line 1642
    .restart local v271    # "is":Landroid/content/IIntentSender;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v362, v0

    .line 1643
    .restart local v362    # "sourceUid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    move-object/16 v371, v0

    .line 1644
    .restart local v371    # "tag":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v271

    move/from16 v2, v362

    move-object/from16 v3, v371

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->noteAlarmFinish(Landroid/content/IIntentSender;ILjava/lang/String;)V

    .line 1645
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1646
    const/4 v6, 0x1

    return v6

    .line 1650
    .end local v271    # "is":Landroid/content/IIntentSender;
    .end local v362    # "sourceUid":I
    .end local v371    # "tag":Ljava/lang/String;
    :pswitch_7c
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1651
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    move-object/16 v320, v0

    .line 1652
    .local v320, "pids":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    move-object/16 v332, v0

    .line 1653
    .local v332, "reason":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_6d

    const/4 v0, 0x1

    move/16 v354, v0

    .line 1654
    .local v354, "secure":Z
    :goto_5b
    move-object/from16 v0, p0

    move-object/from16 v1, v320

    move-object/from16 v2, v332

    move/from16 v3, v354

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->killPids([ILjava/lang/String;Z)Z

    move-result v0

    move/16 v342, v0

    .line 1655
    .restart local v342    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1656
    move/from16 v0, v342

    if-eqz v0, :cond_6e

    const/4 v6, 0x1

    :goto_5c
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1657
    const/4 v6, 0x1

    return v6

    .line 1653
    .end local v342    # "res":Z
    .end local v354    # "secure":Z
    :cond_6d
    const/4 v0, 0x0

    move/16 v354, v0

    goto :goto_5b

    .line 1656
    .restart local v342    # "res":Z
    .restart local v354    # "secure":Z
    :cond_6e
    const/4 v6, 0x0

    goto :goto_5c

    .line 1661
    .end local v320    # "pids":[I
    .end local v332    # "reason":Ljava/lang/String;
    .end local v342    # "res":Z
    .end local v354    # "secure":Z
    :pswitch_7d
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1662
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    move-object/16 v332, v0

    .line 1663
    .restart local v332    # "reason":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v332

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->killProcessesBelowForeground(Ljava/lang/String;)Z

    move-result v0

    move/16 v342, v0

    .line 1664
    .restart local v342    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1665
    move/from16 v0, v342

    if-eqz v0, :cond_6f

    const/4 v6, 0x1

    :goto_5d
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1666
    const/4 v6, 0x1

    return v6

    .line 1665
    :cond_6f
    const/4 v6, 0x0

    goto :goto_5d

    .line 1670
    .end local v332    # "reason":Ljava/lang/String;
    .end local v342    # "res":Z
    :pswitch_7e
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1671
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v212

    .line 1672
    .local v212, "app":Landroid/os/IBinder;
    new-instance v225, Landroid/app/ApplicationErrorReport$CrashInfo;

    move-object/from16 v0, v225

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/app/ApplicationErrorReport$CrashInfo;-><init>(Landroid/os/Parcel;)V

    .line 1673
    .local v225, "ci":Landroid/app/ApplicationErrorReport$CrashInfo;
    move-object/from16 v0, p0

    move-object/from16 v1, v212

    move-object/from16 v2, v225

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->handleApplicationCrash(Landroid/os/IBinder;Landroid/app/ApplicationErrorReport$CrashInfo;)V

    .line 1674
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1675
    const/4 v6, 0x1

    return v6

    .line 1679
    .end local v212    # "app":Landroid/os/IBinder;
    .end local v225    # "ci":Landroid/app/ApplicationErrorReport$CrashInfo;
    :pswitch_7f
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1680
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v212

    .line 1681
    .restart local v212    # "app":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    move-object/16 v371, v0

    .line 1682
    .restart local v371    # "tag":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_70

    const/4 v0, 0x1

    move/16 v370, v0

    .line 1683
    .local v370, "system":Z
    :goto_5e
    new-instance v225, Landroid/app/ApplicationErrorReport$CrashInfo;

    move-object/from16 v0, v225

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/app/ApplicationErrorReport$CrashInfo;-><init>(Landroid/os/Parcel;)V

    .line 1684
    .restart local v225    # "ci":Landroid/app/ApplicationErrorReport$CrashInfo;
    move-object/from16 v0, p0

    move-object/from16 v1, v212

    move-object/from16 v2, v371

    move/from16 v3, v370

    move-object/from16 v4, v225

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->handleApplicationWtf(Landroid/os/IBinder;Ljava/lang/String;ZLandroid/app/ApplicationErrorReport$CrashInfo;)Z

    move-result v0

    move/16 v342, v0

    .line 1685
    .restart local v342    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1686
    move/from16 v0, v342

    if-eqz v0, :cond_71

    const/4 v6, 0x1

    :goto_5f
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1687
    const/4 v6, 0x1

    return v6

    .line 1682
    .end local v225    # "ci":Landroid/app/ApplicationErrorReport$CrashInfo;
    .end local v342    # "res":Z
    .end local v370    # "system":Z
    :cond_70
    const/4 v0, 0x0

    move/16 v370, v0

    .restart local v370    # "system":Z
    goto :goto_5e

    .line 1686
    .restart local v225    # "ci":Landroid/app/ApplicationErrorReport$CrashInfo;
    .restart local v342    # "res":Z
    :cond_71
    const/4 v6, 0x0

    goto :goto_5f

    .line 1691
    .end local v212    # "app":Landroid/os/IBinder;
    .end local v225    # "ci":Landroid/app/ApplicationErrorReport$CrashInfo;
    .end local v342    # "res":Z
    .end local v370    # "system":Z
    .end local v371    # "tag":Ljava/lang/String;
    :pswitch_80
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1692
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v212

    .line 1693
    .restart local v212    # "app":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v387, v0

    .line 1694
    .local v387, "violationMask":I
    new-instance v0, Landroid/os/StrictMode$ViolationInfo;

    move-object/16 v268, v0

    move-object/from16 v0, v268

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/os/StrictMode$ViolationInfo;-><init>(Landroid/os/Parcel;)V

    .line 1695
    .local v268, "info":Landroid/os/StrictMode$ViolationInfo;
    move-object/from16 v0, p0

    move-object/from16 v1, v212

    move/from16 v2, v387

    move-object/from16 v3, v268

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->handleApplicationStrictModeViolation(Landroid/os/IBinder;ILandroid/os/StrictMode$ViolationInfo;)V

    .line 1696
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1697
    const/4 v6, 0x1

    return v6

    .line 1701
    .end local v212    # "app":Landroid/os/IBinder;
    .end local v268    # "info":Landroid/os/StrictMode$ViolationInfo;
    .end local v387    # "violationMask":I
    :pswitch_81
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1702
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v358, v0

    .line 1703
    .local v358, "sig":I
    move-object/from16 v0, p0

    move/from16 v1, v358

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->signalPersistentProcesses(I)V

    .line 1704
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1705
    const/4 v6, 0x1

    return v6

    .line 1709
    .end local v358    # "sig":I
    :pswitch_82
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1710
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v32

    .line 1711
    .restart local v32    # "packageName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1712
    .restart local v17    # "userId":I
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->killBackgroundProcesses(Ljava/lang/String;I)V

    .line 1713
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1714
    const/4 v6, 0x1

    return v6

    .line 1718
    .end local v17    # "userId":I
    .end local v32    # "packageName":Ljava/lang/String;
    :pswitch_83
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1719
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->killAllBackgroundProcesses()V

    .line 1720
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1721
    const/4 v6, 0x1

    return v6

    .line 1725
    :pswitch_84
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1726
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v32

    .line 1727
    .restart local v32    # "packageName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1728
    .restart local v17    # "userId":I
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->killPackageDependents(Ljava/lang/String;I)V

    .line 1729
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1730
    const/4 v6, 0x1

    return v6

    .line 1734
    .end local v17    # "userId":I
    .end local v32    # "packageName":Ljava/lang/String;
    :pswitch_85
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1735
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v32

    .line 1736
    .restart local v32    # "packageName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1737
    .restart local v17    # "userId":I
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->forceStopPackage(Ljava/lang/String;I)V

    .line 1738
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1739
    const/4 v6, 0x1

    return v6

    .line 1743
    .end local v17    # "userId":I
    .end local v32    # "packageName":Ljava/lang/String;
    :pswitch_86
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1745
    new-instance v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-object/16 v263, v0

    invoke-direct/range {v263 .. v263}, Landroid/app/ActivityManager$RunningAppProcessInfo;-><init>()V

    .line 1746
    .local v263, "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    move-object/from16 v0, p0

    move-object/from16 v1, v263

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getMyMemoryState(Landroid/app/ActivityManager$RunningAppProcessInfo;)V

    .line 1747
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1748
    const/4 v6, 0x0

    move-object/from16 v0, v263

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/app/ActivityManager$RunningAppProcessInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1749
    const/4 v6, 0x1

    return v6

    .line 1753
    .end local v263    # "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :pswitch_87
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1754
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getDeviceConfigurationInfo()Landroid/content/pm/ConfigurationInfo;

    move-result-object v228

    .line 1755
    .local v228, "config":Landroid/content/pm/ConfigurationInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1756
    const/4 v6, 0x0

    move-object/from16 v0, v228

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/pm/ConfigurationInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1757
    const/4 v6, 0x1

    return v6

    .line 1761
    .end local v228    # "config":Landroid/content/pm/ConfigurationInfo;
    :pswitch_88
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1762
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v143

    .line 1763
    .local v143, "process":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1764
    .restart local v17    # "userId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_72

    const/16 v145, 0x1

    .line 1765
    .local v145, "start":Z
    :goto_60
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v147

    .line 1766
    .local v147, "profileType":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_73

    .line 1767
    sget-object v6, Landroid/app/ProfilerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ProfilerInfo;

    move-object v15, v6

    .local v15, "profilerInfo":Landroid/app/ProfilerInfo;
    :goto_61
    move-object/from16 v142, p0

    move/from16 v144, v17

    move-object/from16 v146, v15

    .line 1768
    invoke-virtual/range {v142 .. v147}, Landroid/app/ActivityManagerNative;->profileControl(Ljava/lang/String;IZLandroid/app/ProfilerInfo;I)Z

    move-result v0

    move/16 v342, v0

    .line 1769
    .restart local v342    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1770
    move/from16 v0, v342

    if-eqz v0, :cond_74

    const/4 v6, 0x1

    :goto_62
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1771
    const/4 v6, 0x1

    return v6

    .line 1764
    .end local v15    # "profilerInfo":Landroid/app/ProfilerInfo;
    .end local v145    # "start":Z
    .end local v147    # "profileType":I
    .end local v342    # "res":Z
    :cond_72
    const/16 v145, 0x0

    .restart local v145    # "start":Z
    goto :goto_60

    .line 1767
    .restart local v147    # "profileType":I
    :cond_73
    const/4 v15, 0x0

    goto :goto_61

    .line 1770
    .restart local v15    # "profilerInfo":Landroid/app/ProfilerInfo;
    .restart local v342    # "res":Z
    :cond_74
    const/4 v6, 0x0

    goto :goto_62

    .line 1775
    .end local v15    # "profilerInfo":Landroid/app/ProfilerInfo;
    .end local v17    # "userId":I
    .end local v143    # "process":Ljava/lang/String;
    .end local v145    # "start":Z
    .end local v147    # "profileType":I
    .end local v342    # "res":Z
    :pswitch_89
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1776
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/app/ActivityManagerNative;->shutdown(I)Z

    move-result v0

    move/16 v342, v0

    .line 1777
    .restart local v342    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1778
    move/from16 v0, v342

    if-eqz v0, :cond_75

    const/4 v6, 0x1

    :goto_63
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1779
    const/4 v6, 0x1

    return v6

    .line 1778
    :cond_75
    const/4 v6, 0x0

    goto :goto_63

    .line 1783
    .end local v342    # "res":Z
    :pswitch_8a
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1784
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->stopAppSwitches()V

    .line 1785
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1786
    const/4 v6, 0x1

    return v6

    .line 1790
    :pswitch_8b
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1791
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->resumeAppSwitches()V

    .line 1792
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1793
    const/4 v6, 0x1

    return v6

    .line 1797
    :pswitch_8c
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1798
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v93

    check-cast v93, Landroid/content/Intent;

    .line 1799
    .restart local v93    # "service":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 1800
    .restart local v10    # "resolvedType":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 1801
    .restart local v8    # "callingPackage":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v93

    invoke-virtual {v0, v1, v10, v8}, Landroid/app/ActivityManagerNative;->peekService(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v219

    .line 1802
    .local v219, "binder":Landroid/os/IBinder;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1803
    move-object/from16 v0, p3

    move-object/from16 v1, v219

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1804
    const/4 v6, 0x1

    return v6

    .line 1808
    .end local v8    # "callingPackage":Ljava/lang/String;
    .end local v10    # "resolvedType":Ljava/lang/String;
    .end local v93    # "service":Landroid/content/Intent;
    .end local v219    # "binder":Landroid/os/IBinder;
    :pswitch_8d
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1809
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v32

    .line 1810
    .restart local v32    # "packageName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v218

    .line 1811
    .local v218, "backupRestoreMode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1812
    .restart local v17    # "userId":I
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move/from16 v2, v218

    move/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->bindBackupAgent(Ljava/lang/String;II)Z

    move-result v0

    move/16 v368, v0

    .line 1813
    .local v368, "success":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1814
    move/from16 v0, v368

    if-eqz v0, :cond_76

    const/4 v6, 0x1

    :goto_64
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1815
    const/4 v6, 0x1

    return v6

    .line 1814
    :cond_76
    const/4 v6, 0x0

    goto :goto_64

    .line 1819
    .end local v17    # "userId":I
    .end local v32    # "packageName":Ljava/lang/String;
    .end local v218    # "backupRestoreMode":I
    .end local v368    # "success":Z
    :pswitch_8e
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1820
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v32

    .line 1821
    .restart local v32    # "packageName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v209

    .line 1822
    .local v209, "agent":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v209

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->backupAgentCreated(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1823
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1824
    const/4 v6, 0x1

    return v6

    .line 1828
    .end local v32    # "packageName":Ljava/lang/String;
    .end local v209    # "agent":Landroid/os/IBinder;
    :pswitch_8f
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1829
    sget-object v6, Landroid/content/pm/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object/16 v267, v0

    move-object/from16 v0, v267

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    move-object/16 v267, v0

    .line 1830
    .local v267, "info":Landroid/content/pm/ApplicationInfo;
    move-object/from16 v0, p0

    move-object/from16 v1, v267

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->unbindBackupAgent(Landroid/content/pm/ApplicationInfo;)V

    .line 1831
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1832
    const/4 v6, 0x1

    return v6

    .line 1836
    .end local v267    # "info":Landroid/content/pm/ApplicationInfo;
    :pswitch_90
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1837
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v32

    .line 1838
    .restart local v32    # "packageName":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->addPackageDependency(Ljava/lang/String;)V

    .line 1839
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1840
    const/4 v6, 0x1

    return v6

    .line 1844
    .end local v32    # "packageName":Ljava/lang/String;
    :pswitch_91
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1845
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    move-object/16 v321, v0

    .line 1846
    .local v321, "pkg":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v213

    .line 1847
    .local v213, "appId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1848
    .restart local v17    # "userId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    move-object/16 v332, v0

    .line 1849
    .restart local v332    # "reason":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v321

    move/from16 v2, v213

    move/from16 v3, v17

    move-object/from16 v4, v332

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->killApplication(Ljava/lang/String;IILjava/lang/String;)V

    .line 1850
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1851
    const/4 v6, 0x1

    return v6

    .line 1855
    .end local v17    # "userId":I
    .end local v213    # "appId":I
    .end local v321    # "pkg":Ljava/lang/String;
    .end local v332    # "reason":Ljava/lang/String;
    :pswitch_92
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1856
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    move-object/16 v332, v0

    .line 1857
    .restart local v332    # "reason":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v332

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->closeSystemDialogs(Ljava/lang/String;)V

    .line 1858
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1859
    const/4 v6, 0x1

    return v6

    .line 1863
    .end local v332    # "reason":Ljava/lang/String;
    :pswitch_93
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1864
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    move-object/16 v320, v0

    .line 1865
    .restart local v320    # "pids":[I
    move-object/from16 v0, p0

    move-object/from16 v1, v320

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getProcessMemoryInfo([I)[Landroid/os/Debug$MemoryInfo;

    move-result-object v0

    move-object/16 v343, v0

    .line 1866
    .local v343, "res":[Landroid/os/Debug$MemoryInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1867
    const/4 v6, 0x1

    move-object/from16 v0, p3

    move-object/from16 v1, v343

    invoke-virtual {v0, v1, v6}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 1868
    const/4 v6, 0x1

    return v6

    .line 1872
    .end local v320    # "pids":[I
    .end local v343    # "res":[Landroid/os/Debug$MemoryInfo;
    :pswitch_94
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1873
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    move-object/16 v327, v0

    .line 1874
    .local v327, "processName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v135

    .line 1875
    .restart local v135    # "uid":I
    move-object/from16 v0, p0

    move-object/from16 v1, v327

    move/from16 v2, v135

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->killApplicationProcess(Ljava/lang/String;I)V

    .line 1876
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1877
    const/4 v6, 0x1

    return v6

    .line 1881
    .end local v135    # "uid":I
    .end local v327    # "processName":Ljava/lang/String;
    :pswitch_95
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1882
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v96

    .line 1883
    .restart local v96    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v32

    .line 1884
    .restart local v32    # "packageName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v239

    .line 1885
    .local v239, "enterAnim":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v240

    .line 1886
    .local v240, "exitAnim":I
    move-object/from16 v0, p0

    move-object/from16 v1, v96

    move-object/from16 v2, v32

    move/from16 v3, v239

    move/from16 v4, v240

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->overridePendingTransition(Landroid/os/IBinder;Ljava/lang/String;II)V

    .line 1887
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1888
    const/4 v6, 0x1

    return v6

    .line 1892
    .end local v32    # "packageName":Ljava/lang/String;
    .end local v96    # "token":Landroid/os/IBinder;
    .end local v239    # "enterAnim":I
    .end local v240    # "exitAnim":I
    :pswitch_96
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1893
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->isUserAMonkey()Z

    move-result v214

    .line 1894
    .local v214, "areThey":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1895
    if-eqz v214, :cond_77

    const/4 v6, 0x1

    :goto_65
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1896
    const/4 v6, 0x1

    return v6

    .line 1895
    :cond_77
    const/4 v6, 0x0

    goto :goto_65

    .line 1900
    .end local v214    # "areThey":Z
    :pswitch_97
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1901
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v6, v0, :cond_78

    const/4 v0, 0x1

    move/16 v300, v0

    .line 1902
    .local v300, "monkey":Z
    :goto_66
    move-object/from16 v0, p0

    move/from16 v1, v300

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->setUserIsMonkey(Z)V

    .line 1903
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1904
    const/4 v6, 0x1

    return v6

    .line 1901
    .end local v300    # "monkey":Z
    :cond_78
    const/4 v0, 0x0

    move/16 v300, v0

    goto :goto_66

    .line 1908
    :pswitch_98
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1909
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->finishHeavyWeightApp()V

    .line 1910
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1911
    const/4 v6, 0x1

    return v6

    .line 1915
    :pswitch_99
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1916
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v96

    .line 1917
    .restart local v96    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v96

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->isImmersive(Landroid/os/IBinder;)Z

    move-result v0

    move/16 v276, v0

    .line 1918
    .local v276, "isit":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1919
    move/from16 v0, v276

    if-eqz v0, :cond_79

    const/4 v6, 0x1

    :goto_67
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1920
    const/4 v6, 0x1

    return v6

    .line 1919
    :cond_79
    const/4 v6, 0x0

    goto :goto_67

    .line 1924
    .end local v96    # "token":Landroid/os/IBinder;
    .end local v276    # "isit":Z
    :pswitch_9a
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1925
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v96

    .line 1926
    .restart local v96    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v96

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->isTopOfTask(Landroid/os/IBinder;)Z

    move-result v0

    move/16 v275, v0

    .line 1927
    .local v275, "isTopOfTask":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1928
    move/from16 v0, v275

    if-eqz v0, :cond_7a

    const/4 v6, 0x1

    :goto_68
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1929
    const/4 v6, 0x1

    return v6

    .line 1928
    :cond_7a
    const/4 v6, 0x0

    goto :goto_68

    .line 1933
    .end local v96    # "token":Landroid/os/IBinder;
    .end local v275    # "isTopOfTask":Z
    :pswitch_9b
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1934
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v96

    .line 1935
    .restart local v96    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v96

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->convertFromTranslucent(Landroid/os/IBinder;)Z

    move-result v229

    .line 1936
    .local v229, "converted":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1937
    if-eqz v229, :cond_7b

    const/4 v6, 0x1

    :goto_69
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1938
    const/4 v6, 0x1

    return v6

    .line 1937
    :cond_7b
    const/4 v6, 0x0

    goto :goto_69

    .line 1942
    .end local v96    # "token":Landroid/os/IBinder;
    .end local v229    # "converted":Z
    :pswitch_9c
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1943
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v96

    .line 1945
    .restart local v96    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-nez v6, :cond_7c

    .line 1946
    const/16 v221, 0x0

    .line 1950
    :goto_6a
    invoke-static/range {v221 .. v221}, Landroid/app/ActivityOptions;->fromBundle(Landroid/os/Bundle;)Landroid/app/ActivityOptions;

    move-result-object v0

    move-object/16 v310, v0

    .line 1951
    .local v310, "options":Landroid/app/ActivityOptions;
    move-object/from16 v0, p0

    move-object/from16 v1, v96

    move-object/from16 v2, v310

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->convertToTranslucent(Landroid/os/IBinder;Landroid/app/ActivityOptions;)Z

    move-result v229

    .line 1952
    .restart local v229    # "converted":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1953
    if-eqz v229, :cond_7d

    const/4 v6, 0x1

    :goto_6b
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1954
    const/4 v6, 0x1

    return v6

    .line 1948
    .end local v229    # "converted":Z
    .end local v310    # "options":Landroid/app/ActivityOptions;
    :cond_7c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v221

    .local v221, "bundle":Landroid/os/Bundle;
    goto :goto_6a

    .line 1953
    .end local v221    # "bundle":Landroid/os/Bundle;
    .restart local v229    # "converted":Z
    .restart local v310    # "options":Landroid/app/ActivityOptions;
    :cond_7d
    const/4 v6, 0x0

    goto :goto_6b

    .line 1958
    .end local v96    # "token":Landroid/os/IBinder;
    .end local v229    # "converted":Z
    .end local v310    # "options":Landroid/app/ActivityOptions;
    :pswitch_9d
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1959
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v96

    .line 1960
    .restart local v96    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v96

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getActivityOptions(Landroid/os/IBinder;)Landroid/app/ActivityOptions;

    move-result-object v0

    move-object/16 v310, v0

    .line 1961
    .restart local v310    # "options":Landroid/app/ActivityOptions;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1962
    move-object/from16 v0, v310

    if-nez v0, :cond_7e

    const/4 v6, 0x0

    :goto_6c
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 1963
    const/4 v6, 0x1

    return v6

    .line 1962
    :cond_7e
    invoke-virtual/range {v310 .. v310}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v6

    goto :goto_6c

    .line 1967
    .end local v96    # "token":Landroid/os/IBinder;
    .end local v310    # "options":Landroid/app/ActivityOptions;
    :pswitch_9e
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1968
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v96

    .line 1969
    .restart local v96    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v6, v0, :cond_7f

    const/4 v0, 0x1

    move/16 v259, v0

    .line 1970
    .local v259, "imm":Z
    :goto_6d
    move-object/from16 v0, p0

    move-object/from16 v1, v96

    move/from16 v2, v259

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->setImmersive(Landroid/os/IBinder;Z)V

    .line 1971
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1972
    const/4 v6, 0x1

    return v6

    .line 1969
    .end local v259    # "imm":Z
    :cond_7f
    const/4 v0, 0x0

    move/16 v259, v0

    goto :goto_6d

    .line 1976
    .end local v96    # "token":Landroid/os/IBinder;
    :pswitch_9f
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1977
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->isTopActivityImmersive()Z

    move-result v0

    move/16 v276, v0

    .line 1978
    .restart local v276    # "isit":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1979
    move/from16 v0, v276

    if-eqz v0, :cond_80

    const/4 v6, 0x1

    :goto_6e
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1980
    const/4 v6, 0x1

    return v6

    .line 1979
    :cond_80
    const/4 v6, 0x0

    goto :goto_6e

    .line 1984
    .end local v276    # "isit":Z
    :pswitch_a0
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1985
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v135

    .line 1986
    .restart local v135    # "uid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v269, v0

    .line 1987
    .local v269, "initialPid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v32

    .line 1988
    .restart local v32    # "packageName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    move-object/16 v297, v0

    .line 1989
    .local v297, "message":Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, v135

    move/from16 v2, v269

    move-object/from16 v3, v32

    move-object/from16 v4, v297

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->crashApplication(IILjava/lang/String;Ljava/lang/String;)V

    .line 1990
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1991
    const/4 v6, 0x1

    return v6

    .line 1995
    .end local v32    # "packageName":Ljava/lang/String;
    .end local v135    # "uid":I
    .end local v269    # "initialPid":I
    .end local v297    # "message":Ljava/lang/String;
    :pswitch_a1
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1996
    sget-object v6, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v133

    check-cast v133, Landroid/net/Uri;

    .line 1997
    .restart local v133    # "uri":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 1998
    .restart local v17    # "userId":I
    move-object/from16 v0, p0

    move-object/from16 v1, v133

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->getProviderMimeType(Landroid/net/Uri;I)Ljava/lang/String;

    move-result-object v0

    move-object/16 v380, v0

    .line 1999
    .local v380, "type":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2000
    move-object/from16 v0, p3

    move-object/from16 v1, v380

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2001
    const/4 v6, 0x1

    return v6

    .line 2005
    .end local v17    # "userId":I
    .end local v133    # "uri":Landroid/net/Uri;
    .end local v380    # "type":Ljava/lang/String;
    :pswitch_a2
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2006
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v130

    .line 2007
    .restart local v130    # "name":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v130

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->newUriPermissionOwner(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    move-object/16 v315, v0

    .line 2008
    .local v315, "perm":Landroid/os/IBinder;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2009
    move-object/from16 v0, p3

    move-object/from16 v1, v315

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2010
    const/4 v6, 0x1

    return v6

    .line 2014
    .end local v130    # "name":Ljava/lang/String;
    .end local v315    # "perm":Landroid/os/IBinder;
    :pswitch_a3
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2015
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v176

    .line 2016
    .restart local v176    # "activityToken":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v176

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getUriPermissionOwnerForActivity(Landroid/os/IBinder;)Landroid/os/IBinder;

    move-result-object v0

    move-object/16 v315, v0

    .line 2017
    .restart local v315    # "perm":Landroid/os/IBinder;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2018
    move-object/from16 v0, p3

    move-object/from16 v1, v315

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2019
    const/4 v6, 0x1

    return v6

    .line 2023
    .end local v176    # "activityToken":Landroid/os/IBinder;
    .end local v315    # "perm":Landroid/os/IBinder;
    :pswitch_a4
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2024
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v149

    .line 2025
    .local v149, "owner":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v150

    .line 2026
    .local v150, "fromUid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v141

    .line 2027
    .restart local v141    # "targetPkg":Ljava/lang/String;
    sget-object v6, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v133

    check-cast v133, Landroid/net/Uri;

    .line 2028
    .restart local v133    # "uri":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v136

    .line 2029
    .restart local v136    # "mode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v154

    .line 2030
    .local v154, "sourceUserId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v155

    .local v155, "targetUserId":I
    move-object/from16 v148, p0

    move-object/from16 v151, v141

    move-object/from16 v152, v133

    move/from16 v153, v136

    .line 2031
    invoke-virtual/range {v148 .. v155}, Landroid/app/ActivityManagerNative;->grantUriPermissionFromOwner(Landroid/os/IBinder;ILjava/lang/String;Landroid/net/Uri;III)V

    .line 2033
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2034
    const/4 v6, 0x1

    return v6

    .line 2038
    .end local v133    # "uri":Landroid/net/Uri;
    .end local v136    # "mode":I
    .end local v141    # "targetPkg":Ljava/lang/String;
    .end local v149    # "owner":Landroid/os/IBinder;
    .end local v150    # "fromUid":I
    .end local v154    # "sourceUserId":I
    .end local v155    # "targetUserId":I
    :pswitch_a5
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2039
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v149

    .line 2040
    .restart local v149    # "owner":Landroid/os/IBinder;
    const/16 v133, 0x0

    .line 2041
    .local v133, "uri":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_81

    .line 2042
    sget-object v6, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v133

    .end local v133    # "uri":Landroid/net/Uri;
    check-cast v133, Landroid/net/Uri;

    .line 2044
    :cond_81
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v136

    .line 2045
    .restart local v136    # "mode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 2046
    .restart local v17    # "userId":I
    move-object/from16 v0, p0

    move-object/from16 v1, v149

    move-object/from16 v2, v133

    move/from16 v3, v136

    move/from16 v4, v17

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->revokeUriPermissionFromOwner(Landroid/os/IBinder;Landroid/net/Uri;II)V

    .line 2047
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2048
    const/4 v6, 0x1

    return v6

    .line 2052
    .end local v17    # "userId":I
    .end local v136    # "mode":I
    .end local v149    # "owner":Landroid/os/IBinder;
    :pswitch_a6
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2053
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v43

    .line 2054
    .restart local v43    # "callingUid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v141

    .line 2055
    .restart local v141    # "targetPkg":Ljava/lang/String;
    sget-object v6, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v133

    check-cast v133, Landroid/net/Uri;

    .line 2056
    .local v133, "uri":Landroid/net/Uri;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v160

    .line 2057
    .local v160, "modeFlags":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .restart local v17    # "userId":I
    move-object/from16 v156, p0

    move/from16 v157, v43

    move-object/from16 v158, v141

    move-object/from16 v159, v133

    move/from16 v161, v17

    .line 2058
    invoke-virtual/range {v156 .. v161}, Landroid/app/ActivityManagerNative;->checkGrantUriPermission(ILjava/lang/String;Landroid/net/Uri;II)I

    move-result v0

    move/16 v336, v0

    .line 2059
    .restart local v336    # "res":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2060
    move-object/from16 v0, p3

    move/from16 v1, v336

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2061
    const/4 v6, 0x1

    return v6

    .line 2065
    .end local v17    # "userId":I
    .end local v43    # "callingUid":I
    .end local v133    # "uri":Landroid/net/Uri;
    .end local v141    # "targetPkg":Ljava/lang/String;
    .end local v160    # "modeFlags":I
    .end local v336    # "res":I
    :pswitch_a7
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2066
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v143

    .line 2067
    .restart local v143    # "process":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 2068
    .restart local v17    # "userId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_82

    const/16 v164, 0x1

    .line 2069
    .local v164, "managed":Z
    :goto_6f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v165

    .line 2070
    .local v165, "path":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_83

    .line 2071
    sget-object v6, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/ParcelFileDescriptor;

    move-object/from16 v166, v6

    .local v166, "fd":Landroid/os/ParcelFileDescriptor;
    :goto_70
    move-object/from16 v161, p0

    move-object/from16 v162, v143

    move/from16 v163, v17

    .line 2072
    invoke-virtual/range {v161 .. v166}, Landroid/app/ActivityManagerNative;->dumpHeap(Ljava/lang/String;IZLjava/lang/String;Landroid/os/ParcelFileDescriptor;)Z

    move-result v0

    move/16 v342, v0

    .line 2073
    .restart local v342    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2074
    move/from16 v0, v342

    if-eqz v0, :cond_84

    const/4 v6, 0x1

    :goto_71
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2075
    const/4 v6, 0x1

    return v6

    .line 2068
    .end local v164    # "managed":Z
    .end local v165    # "path":Ljava/lang/String;
    .end local v166    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v342    # "res":Z
    :cond_82
    const/16 v164, 0x0

    .restart local v164    # "managed":Z
    goto :goto_6f

    .line 2071
    .restart local v165    # "path":Ljava/lang/String;
    :cond_83
    const/16 v166, 0x0

    goto :goto_70

    .line 2074
    .restart local v166    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local v342    # "res":Z
    :cond_84
    const/4 v6, 0x0

    goto :goto_71

    .line 2080
    .end local v17    # "userId":I
    .end local v143    # "process":Ljava/lang/String;
    .end local v164    # "managed":Z
    .end local v165    # "path":Ljava/lang/String;
    .end local v166    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v342    # "res":Z
    :pswitch_a8
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2081
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v217

    .line 2082
    .restart local v217    # "b":Landroid/os/IBinder;
    invoke-static/range {v217 .. v217}, Landroid/app/ApplicationThreadNative;->asInterface(Landroid/os/IBinder;)Landroid/app/IApplicationThread;

    move-result-object v7

    .line 2083
    .restart local v7    # "app":Landroid/app/IApplicationThread;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 2084
    .restart local v8    # "callingPackage":Ljava/lang/String;
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v170

    check-cast v170, [Landroid/content/Intent;

    .line 2085
    .local v170, "intents":[Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v171

    .line 2086
    .local v171, "resolvedTypes":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v11

    .line 2087
    .restart local v11    # "resultTo":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_85

    .line 2088
    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/os/Bundle;

    .line 2089
    :goto_72
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .restart local v17    # "userId":I
    move-object/from16 v167, p0

    move-object/from16 v168, v7

    move-object/from16 v169, v8

    move-object/from16 v172, v11

    move-object/from16 v173, v16

    move/from16 v174, v17

    .line 2090
    invoke-virtual/range {v167 .. v174}, Landroid/app/ActivityManagerNative;->startActivities(Landroid/app/IApplicationThread;Ljava/lang/String;[Landroid/content/Intent;[Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;I)I

    move-result v0

    move/16 v346, v0

    .line 2092
    .restart local v346    # "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2093
    move-object/from16 v0, p3

    move/from16 v1, v346

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2094
    const/4 v6, 0x1

    return v6

    .line 2088
    .end local v17    # "userId":I
    .end local v346    # "result":I
    :cond_85
    const/16 v16, 0x0

    .restart local v16    # "options":Landroid/os/Bundle;
    goto :goto_72

    .line 2099
    .end local v7    # "app":Landroid/app/IApplicationThread;
    .end local v8    # "callingPackage":Ljava/lang/String;
    .end local v11    # "resultTo":Landroid/os/IBinder;
    .end local v16    # "options":Landroid/os/Bundle;
    .end local v170    # "intents":[Landroid/content/Intent;
    .end local v171    # "resolvedTypes":[Ljava/lang/String;
    .end local v217    # "b":Landroid/os/IBinder;
    :pswitch_a9
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2100
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getFrontActivityScreenCompatMode()I

    move-result v136

    .line 2101
    .restart local v136    # "mode":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2102
    move-object/from16 v0, p3

    move/from16 v1, v136

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2103
    const/4 v6, 0x1

    return v6

    .line 2108
    .end local v136    # "mode":I
    :pswitch_aa
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2109
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v136

    .line 2110
    .restart local v136    # "mode":I
    move-object/from16 v0, p0

    move/from16 v1, v136

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->setFrontActivityScreenCompatMode(I)V

    .line 2111
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2112
    move-object/from16 v0, p3

    move/from16 v1, v136

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2113
    const/4 v6, 0x1

    return v6

    .line 2118
    .end local v136    # "mode":I
    :pswitch_ab
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2119
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    move-object/16 v321, v0

    .line 2120
    .restart local v321    # "pkg":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v321

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getPackageScreenCompatMode(Ljava/lang/String;)I

    move-result v136

    .line 2121
    .restart local v136    # "mode":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2122
    move-object/from16 v0, p3

    move/from16 v1, v136

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2123
    const/4 v6, 0x1

    return v6

    .line 2128
    .end local v136    # "mode":I
    .end local v321    # "pkg":Ljava/lang/String;
    :pswitch_ac
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2129
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    move-object/16 v321, v0

    .line 2130
    .restart local v321    # "pkg":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v136

    .line 2131
    .restart local v136    # "mode":I
    move-object/from16 v0, p0

    move-object/from16 v1, v321

    move/from16 v2, v136

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->setPackageScreenCompatMode(Ljava/lang/String;I)V

    .line 2132
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2133
    const/4 v6, 0x1

    return v6

    .line 2137
    .end local v136    # "mode":I
    .end local v321    # "pkg":Ljava/lang/String;
    :pswitch_ad
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2138
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v383, v0

    .line 2139
    .local v383, "userid":I
    move-object/from16 v0, p0

    move/from16 v1, v383

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->switchUser(I)Z

    move-result v0

    move/16 v348, v0

    .line 2140
    .restart local v348    # "result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2141
    move/from16 v0, v348

    if-eqz v0, :cond_86

    const/4 v6, 0x1

    :goto_73
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2142
    const/4 v6, 0x1

    return v6

    .line 2141
    :cond_86
    const/4 v6, 0x0

    goto :goto_73

    .line 2146
    .end local v348    # "result":Z
    .end local v383    # "userid":I
    :pswitch_ae
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2147
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v383, v0

    .line 2148
    .restart local v383    # "userid":I
    move-object/from16 v0, p0

    move/from16 v1, v383

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->startUserInBackground(I)Z

    move-result v0

    move/16 v348, v0

    .line 2149
    .restart local v348    # "result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2150
    move/from16 v0, v348

    if-eqz v0, :cond_87

    const/4 v6, 0x1

    :goto_74
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2151
    const/4 v6, 0x1

    return v6

    .line 2150
    :cond_87
    const/4 v6, 0x0

    goto :goto_74

    .line 2155
    .end local v348    # "result":Z
    .end local v383    # "userid":I
    :pswitch_af
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2156
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 2157
    .restart local v17    # "userId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    move-object/16 v379, v0

    .line 2158
    .local v379, "token":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    move-object/16 v353, v0

    .line 2160
    .local v353, "secret":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 2159
    invoke-static {v6}, Landroid/os/IProgressListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IProgressListener;

    move-result-object v0

    move-object/16 v291, v0

    .line 2161
    .local v291, "listener":Landroid/os/IProgressListener;
    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v379

    move-object/from16 v3, v353

    move-object/from16 v4, v291

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->unlockUser(I[B[BLandroid/os/IProgressListener;)Z

    move-result v0

    move/16 v348, v0

    .line 2162
    .restart local v348    # "result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2163
    move/from16 v0, v348

    if-eqz v0, :cond_88

    const/4 v6, 0x1

    :goto_75
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2164
    const/4 v6, 0x1

    return v6

    .line 2163
    :cond_88
    const/4 v6, 0x0

    goto :goto_75

    .line 2168
    .end local v17    # "userId":I
    .end local v291    # "listener":Landroid/os/IProgressListener;
    .end local v348    # "result":Z
    .end local v353    # "secret":[B
    .end local v379    # "token":[B
    :pswitch_b0
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2169
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v383, v0

    .line 2170
    .restart local v383    # "userid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_89

    const/16 v246, 0x1

    .line 2172
    .local v246, "force":Z
    :goto_76
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 2171
    invoke-static {v6}, Landroid/app/IStopUserCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IStopUserCallback;

    move-result-object v223

    .line 2173
    .local v223, "callback":Landroid/app/IStopUserCallback;
    move-object/from16 v0, p0

    move/from16 v1, v383

    move/from16 v2, v246

    move-object/from16 v3, v223

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->stopUser(IZLandroid/app/IStopUserCallback;)I

    move-result v0

    move/16 v346, v0

    .line 2174
    .restart local v346    # "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2175
    move-object/from16 v0, p3

    move/from16 v1, v346

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2176
    const/4 v6, 0x1

    return v6

    .line 2170
    .end local v223    # "callback":Landroid/app/IStopUserCallback;
    .end local v246    # "force":Z
    .end local v346    # "result":I
    :cond_89
    const/16 v246, 0x0

    .restart local v246    # "force":Z
    goto :goto_76

    .line 2180
    .end local v246    # "force":Z
    .end local v383    # "userid":I
    :pswitch_b1
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2181
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v0

    move-object/16 v382, v0

    .line 2182
    .local v382, "userInfo":Landroid/content/pm/UserInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2183
    const/4 v6, 0x0

    move-object/from16 v0, v382

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/content/pm/UserInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2184
    const/4 v6, 0x1

    return v6

    .line 2188
    .end local v382    # "userInfo":Landroid/content/pm/UserInfo;
    :pswitch_b2
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2189
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v383, v0

    .line 2190
    .restart local v383    # "userid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v206

    .line 2191
    .local v206, "_flags":I
    move-object/from16 v0, p0

    move/from16 v1, v383

    move/from16 v2, v206

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->isUserRunning(II)Z

    move-result v0

    move/16 v348, v0

    .line 2192
    .restart local v348    # "result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2193
    move/from16 v0, v348

    if-eqz v0, :cond_8a

    const/4 v6, 0x1

    :goto_77
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2194
    const/4 v6, 0x1

    return v6

    .line 2193
    :cond_8a
    const/4 v6, 0x0

    goto :goto_77

    .line 2198
    .end local v206    # "_flags":I
    .end local v348    # "result":Z
    .end local v383    # "userid":I
    :pswitch_b3
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2199
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getRunningUserIds()[I

    move-result-object v0

    move-object/16 v349, v0

    .line 2200
    .local v349, "result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2201
    move-object/from16 v0, p3

    move-object/from16 v1, v349

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 2202
    const/4 v6, 0x1

    return v6

    .line 2207
    .end local v349    # "result":[I
    :pswitch_b4
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2208
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v72

    .line 2209
    .restart local v72    # "taskId":I
    move-object/from16 v0, p0

    move/from16 v1, v72

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->removeTask(I)Z

    move-result v0

    move/16 v348, v0

    .line 2210
    .restart local v348    # "result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2211
    move/from16 v0, v348

    if-eqz v0, :cond_8b

    const/4 v6, 0x1

    :goto_78
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2212
    const/4 v6, 0x1

    return v6

    .line 2211
    :cond_8b
    const/4 v6, 0x0

    goto :goto_78

    .line 2216
    .end local v72    # "taskId":I
    .end local v348    # "result":Z
    :pswitch_b5
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2218
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 2217
    invoke-static {v6}, Landroid/app/IProcessObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IProcessObserver;

    move-result-object v0

    move-object/16 v303, v0

    .line 2219
    .local v303, "observer":Landroid/app/IProcessObserver;
    move-object/from16 v0, p0

    move-object/from16 v1, v303

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->registerProcessObserver(Landroid/app/IProcessObserver;)V

    .line 2220
    const/4 v6, 0x1

    return v6

    .line 2224
    .end local v303    # "observer":Landroid/app/IProcessObserver;
    :pswitch_b6
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2226
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 2225
    invoke-static {v6}, Landroid/app/IProcessObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IProcessObserver;

    move-result-object v0

    move-object/16 v303, v0

    .line 2227
    .restart local v303    # "observer":Landroid/app/IProcessObserver;
    move-object/from16 v0, p0

    move-object/from16 v1, v303

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->unregisterProcessObserver(Landroid/app/IProcessObserver;)V

    .line 2228
    const/4 v6, 0x1

    return v6

    .line 2232
    .end local v303    # "observer":Landroid/app/IProcessObserver;
    :pswitch_b7
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2234
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 2233
    invoke-static {v6}, Landroid/app/IUidObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IUidObserver;

    move-result-object v0

    move-object/16 v304, v0

    .line 2235
    .local v304, "observer":Landroid/app/IUidObserver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v391, v0

    .line 2236
    .local v391, "which":I
    move-object/from16 v0, p0

    move-object/from16 v1, v304

    move/from16 v2, v391

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->registerUidObserver(Landroid/app/IUidObserver;I)V

    .line 2237
    const/4 v6, 0x1

    return v6

    .line 2241
    .end local v304    # "observer":Landroid/app/IUidObserver;
    .end local v391    # "which":I
    :pswitch_b8
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2243
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 2242
    invoke-static {v6}, Landroid/app/IUidObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IUidObserver;

    move-result-object v0

    move-object/16 v304, v0

    .line 2244
    .restart local v304    # "observer":Landroid/app/IUidObserver;
    move-object/from16 v0, p0

    move-object/from16 v1, v304

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->unregisterUidObserver(Landroid/app/IUidObserver;)V

    .line 2245
    const/4 v6, 0x1

    return v6

    .line 2250
    .end local v304    # "observer":Landroid/app/IUidObserver;
    :pswitch_b9
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2251
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    move-object/16 v321, v0

    .line 2252
    .restart local v321    # "pkg":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v321

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getPackageAskScreenCompat(Ljava/lang/String;)Z

    move-result v215

    .line 2253
    .local v215, "ask":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2254
    if-eqz v215, :cond_8c

    const/4 v6, 0x1

    :goto_79
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2255
    const/4 v6, 0x1

    return v6

    .line 2254
    :cond_8c
    const/4 v6, 0x0

    goto :goto_79

    .line 2260
    .end local v215    # "ask":Z
    .end local v321    # "pkg":Ljava/lang/String;
    :pswitch_ba
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2261
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    move-object/16 v321, v0

    .line 2262
    .restart local v321    # "pkg":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_8d

    const/16 v215, 0x1

    .line 2263
    .restart local v215    # "ask":Z
    :goto_7a
    move-object/from16 v0, p0

    move-object/from16 v1, v321

    move/from16 v2, v215

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->setPackageAskScreenCompat(Ljava/lang/String;Z)V

    .line 2264
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2265
    const/4 v6, 0x1

    return v6

    .line 2262
    .end local v215    # "ask":Z
    :cond_8d
    const/16 v215, 0x0

    goto :goto_7a

    .line 2269
    .end local v321    # "pkg":Ljava/lang/String;
    :pswitch_bb
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2271
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 2270
    invoke-static {v6}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v0

    move-object/16 v331, v0

    .line 2272
    .restart local v331    # "r":Landroid/content/IIntentSender;
    move-object/from16 v0, p0

    move-object/from16 v1, v331

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->isIntentSenderTargetedToPackage(Landroid/content/IIntentSender;)Z

    move-result v0

    move/16 v342, v0

    .line 2273
    .restart local v342    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2274
    move/from16 v0, v342

    if-eqz v0, :cond_8e

    const/4 v6, 0x1

    :goto_7b
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2275
    const/4 v6, 0x1

    return v6

    .line 2274
    :cond_8e
    const/4 v6, 0x0

    goto :goto_7b

    .line 2279
    .end local v331    # "r":Landroid/content/IIntentSender;
    .end local v342    # "res":Z
    :pswitch_bc
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2281
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 2280
    invoke-static {v6}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v0

    move-object/16 v331, v0

    .line 2282
    .restart local v331    # "r":Landroid/content/IIntentSender;
    move-object/from16 v0, p0

    move-object/from16 v1, v331

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->isIntentSenderAnActivity(Landroid/content/IIntentSender;)Z

    move-result v0

    move/16 v342, v0

    .line 2283
    .restart local v342    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2284
    move/from16 v0, v342

    if-eqz v0, :cond_8f

    const/4 v6, 0x1

    :goto_7c
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2285
    const/4 v6, 0x1

    return v6

    .line 2284
    :cond_8f
    const/4 v6, 0x0

    goto :goto_7c

    .line 2289
    .end local v331    # "r":Landroid/content/IIntentSender;
    .end local v342    # "res":Z
    :pswitch_bd
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2291
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 2290
    invoke-static {v6}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v0

    move-object/16 v331, v0

    .line 2292
    .restart local v331    # "r":Landroid/content/IIntentSender;
    move-object/from16 v0, p0

    move-object/from16 v1, v331

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getIntentForIntentSender(Landroid/content/IIntentSender;)Landroid/content/Intent;

    move-result-object v9

    .line 2293
    .restart local v9    # "intent":Landroid/content/Intent;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2294
    if-eqz v9, :cond_90

    .line 2295
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2296
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v9, v0, v6}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2300
    :goto_7d
    const/4 v6, 0x1

    return v6

    .line 2298
    :cond_90
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_7d

    .line 2304
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v331    # "r":Landroid/content/IIntentSender;
    :pswitch_be
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2306
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 2305
    invoke-static {v6}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v0

    move-object/16 v331, v0

    .line 2307
    .restart local v331    # "r":Landroid/content/IIntentSender;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    move-object/16 v326, v0

    .line 2308
    .local v326, "prefix":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v331

    move-object/from16 v2, v326

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->getTagForIntentSender(Landroid/content/IIntentSender;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/16 v371, v0

    .line 2309
    .restart local v371    # "tag":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2310
    move-object/from16 v0, p3

    move-object/from16 v1, v371

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2311
    const/4 v6, 0x1

    return v6

    .line 2315
    .end local v326    # "prefix":Ljava/lang/String;
    .end local v331    # "r":Landroid/content/IIntentSender;
    .end local v371    # "tag":Ljava/lang/String;
    :pswitch_bf
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2316
    sget-object v6, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Landroid/content/res/Configuration;

    .line 2317
    .restart local v39    # "config":Landroid/content/res/Configuration;
    move-object/from16 v0, p0

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->updatePersistentConfiguration(Landroid/content/res/Configuration;)V

    .line 2318
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2319
    const/4 v6, 0x1

    return v6

    .line 2323
    .end local v39    # "config":Landroid/content/res/Configuration;
    :pswitch_c0
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2324
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    move-object/16 v320, v0

    .line 2325
    .restart local v320    # "pids":[I
    move-object/from16 v0, p0

    move-object/from16 v1, v320

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getProcessPss([I)[J

    move-result-object v0

    move-object/16 v330, v0

    .line 2326
    .local v330, "pss":[J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2327
    move-object/from16 v0, p3

    move-object/from16 v1, v330

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 2328
    const/4 v6, 0x1

    return v6

    .line 2332
    .end local v320    # "pids":[I
    .end local v330    # "pss":[J
    :pswitch_c1
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2333
    sget-object v6, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object/16 v301, v0

    move-object/from16 v0, v301

    check-cast v0, Ljava/lang/CharSequence;

    move-object/16 v301, v0

    .line 2334
    .local v301, "msg":Ljava/lang/CharSequence;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_91

    const/16 v211, 0x1

    .line 2335
    .local v211, "always":Z
    :goto_7e
    move-object/from16 v0, p0

    move-object/from16 v1, v301

    move/from16 v2, v211

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->showBootMessage(Ljava/lang/CharSequence;Z)V

    .line 2336
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2337
    const/4 v6, 0x1

    return v6

    .line 2334
    .end local v211    # "always":Z
    :cond_91
    const/16 v211, 0x0

    goto :goto_7e

    .line 2341
    .end local v301    # "msg":Ljava/lang/CharSequence;
    :pswitch_c2
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2342
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->keyguardWaitingForActivityDrawn()V

    .line 2343
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2344
    const/4 v6, 0x1

    return v6

    .line 2348
    :pswitch_c3
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2349
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/app/ActivityManagerNative;->keyguardGoingAway(I)V

    .line 2350
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2351
    const/4 v6, 0x1

    return v6

    .line 2355
    :pswitch_c4
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2356
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v96

    .line 2357
    .restart local v96    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v233

    .line 2358
    .local v233, "destAffinity":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v96

    move-object/from16 v2, v233

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->shouldUpRecreateTask(Landroid/os/IBinder;Ljava/lang/String;)Z

    move-result v0

    move/16 v342, v0

    .line 2359
    .restart local v342    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2360
    move/from16 v0, v342

    if-eqz v0, :cond_92

    const/4 v6, 0x1

    :goto_7f
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2361
    const/4 v6, 0x1

    return v6

    .line 2360
    :cond_92
    const/4 v6, 0x0

    goto :goto_7f

    .line 2365
    .end local v96    # "token":Landroid/os/IBinder;
    .end local v233    # "destAffinity":Ljava/lang/String;
    .end local v342    # "res":Z
    :pswitch_c5
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2366
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v96

    .line 2367
    .restart local v96    # "token":Landroid/os/IBinder;
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object/16 v372, v0

    move-object/from16 v0, v372

    check-cast v0, Landroid/content/Intent;

    move-object/16 v372, v0

    .line 2368
    .local v372, "target":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v53

    .line 2369
    .restart local v53    # "resultCode":I
    const/4 v0, 0x0

    move-object/16 v350, v0

    .line 2370
    .restart local v350    # "resultData":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_93

    .line 2371
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object/16 v350, v0

    .end local v350    # "resultData":Landroid/content/Intent;
    move-object/from16 v0, v350

    check-cast v0, Landroid/content/Intent;

    move-object/16 v350, v0

    .line 2373
    :cond_93
    move-object/from16 v0, p0

    move-object/from16 v1, v96

    move-object/from16 v2, v372

    move/from16 v3, v53

    move-object/from16 v4, v350

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->navigateUpTo(Landroid/os/IBinder;Landroid/content/Intent;ILandroid/content/Intent;)Z

    move-result v0

    move/16 v342, v0

    .line 2374
    .restart local v342    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2375
    move/from16 v0, v342

    if-eqz v0, :cond_94

    const/4 v6, 0x1

    :goto_80
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2376
    const/4 v6, 0x1

    return v6

    .line 2375
    :cond_94
    const/4 v6, 0x0

    goto :goto_80

    .line 2380
    .end local v53    # "resultCode":I
    .end local v96    # "token":Landroid/os/IBinder;
    .end local v342    # "res":Z
    .end local v372    # "target":Landroid/content/Intent;
    :pswitch_c6
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2381
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v96

    .line 2382
    .restart local v96    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v96

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getLaunchedFromUid(Landroid/os/IBinder;)I

    move-result v0

    move/16 v336, v0

    .line 2383
    .restart local v336    # "res":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2384
    move-object/from16 v0, p3

    move/from16 v1, v336

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2385
    const/4 v6, 0x1

    return v6

    .line 2389
    .end local v96    # "token":Landroid/os/IBinder;
    .end local v336    # "res":I
    :pswitch_c7
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2390
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v96

    .line 2391
    .restart local v96    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v96

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getLaunchedFromPackage(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object v0

    move-object/16 v341, v0

    .line 2392
    .restart local v341    # "res":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2393
    move-object/from16 v0, p3

    move-object/from16 v1, v341

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2394
    const/4 v6, 0x1

    return v6

    .line 2398
    .end local v96    # "token":Landroid/os/IBinder;
    .end local v341    # "res":Ljava/lang/String;
    :pswitch_c8
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2400
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 2399
    invoke-static {v6}, Landroid/app/IUserSwitchObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IUserSwitchObserver;

    move-result-object v0

    move-object/16 v305, v0

    .line 2401
    .local v305, "observer":Landroid/app/IUserSwitchObserver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v130

    .line 2402
    .restart local v130    # "name":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v305

    move-object/from16 v2, v130

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;Ljava/lang/String;)V

    .line 2403
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2404
    const/4 v6, 0x1

    return v6

    .line 2408
    .end local v130    # "name":Ljava/lang/String;
    .end local v305    # "observer":Landroid/app/IUserSwitchObserver;
    :pswitch_c9
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2410
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 2409
    invoke-static {v6}, Landroid/app/IUserSwitchObserver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IUserSwitchObserver;

    move-result-object v0

    move-object/16 v305, v0

    .line 2411
    .restart local v305    # "observer":Landroid/app/IUserSwitchObserver;
    move-object/from16 v0, p0

    move-object/from16 v1, v305

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->unregisterUserSwitchObserver(Landroid/app/IUserSwitchObserver;)V

    .line 2412
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2413
    const/4 v6, 0x1

    return v6

    .line 2417
    .end local v305    # "observer":Landroid/app/IUserSwitchObserver;
    :pswitch_ca
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2418
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v220

    .line 2419
    .local v220, "bugreportType":I
    move-object/from16 v0, p0

    move/from16 v1, v220

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->requestBugReport(I)V

    .line 2420
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2421
    const/4 v6, 0x1

    return v6

    .line 2425
    .end local v220    # "bugreportType":I
    :pswitch_cb
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2426
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v134

    .line 2427
    .restart local v134    # "pid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_95

    const/16 v207, 0x1

    .line 2428
    .local v207, "aboveSystem":Z
    :goto_81
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    move-object/16 v332, v0

    .line 2429
    .restart local v332    # "reason":Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, v134

    move/from16 v2, v207

    move-object/from16 v3, v332

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->inputDispatchingTimedOut(IZLjava/lang/String;)J

    move-result-wide v0

    move-wide/16 v338, v0

    .line 2430
    .local v338, "res":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2431
    move-object/from16 v0, p3

    move-wide/from16 v1, v338

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 2432
    const/4 v6, 0x1

    return v6

    .line 2427
    .end local v207    # "aboveSystem":Z
    .end local v332    # "reason":Ljava/lang/String;
    .end local v338    # "res":J
    :cond_95
    const/16 v207, 0x0

    .restart local v207    # "aboveSystem":Z
    goto :goto_81

    .line 2436
    .end local v134    # "pid":I
    .end local v207    # "aboveSystem":Z
    :pswitch_cc
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2437
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v173

    .line 2438
    .local v173, "requestType":I
    move-object/from16 v0, p0

    move/from16 v1, v173

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getAssistContextExtras(I)Landroid/os/Bundle;

    move-result-object v0

    move-object/16 v340, v0

    .line 2439
    .local v340, "res":Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2440
    move-object/from16 v0, p3

    move-object/from16 v1, v340

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 2441
    const/4 v6, 0x1

    return v6

    .line 2445
    .end local v173    # "requestType":I
    .end local v340    # "res":Landroid/os/Bundle;
    :pswitch_cd
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2446
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v173

    .line 2447
    .restart local v173    # "requestType":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/os/IResultReceiver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/os/IResultReceiver;

    move-result-object v174

    .line 2448
    .local v174, "receiver":Lcom/android/internal/os/IResultReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v175

    .line 2449
    .local v175, "receiverExtras":Landroid/os/Bundle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v176

    .line 2450
    .restart local v176    # "activityToken":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v6, v0, :cond_96

    const/16 v177, 0x1

    .line 2451
    .local v177, "focused":Z
    :goto_82
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v6, v0, :cond_97

    const/16 v178, 0x1

    .local v178, "newSessionId":Z
    :goto_83
    move-object/from16 v172, p0

    .line 2452
    invoke-virtual/range {v172 .. v178}, Landroid/app/ActivityManagerNative;->requestAssistContextExtras(ILcom/android/internal/os/IResultReceiver;Landroid/os/Bundle;Landroid/os/IBinder;ZZ)Z

    move-result v0

    move/16 v342, v0

    .line 2454
    .restart local v342    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2455
    move/from16 v0, v342

    if-eqz v0, :cond_98

    const/4 v6, 0x1

    :goto_84
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2456
    const/4 v6, 0x1

    return v6

    .line 2450
    .end local v177    # "focused":Z
    .end local v178    # "newSessionId":Z
    .end local v342    # "res":Z
    :cond_96
    const/16 v177, 0x0

    .restart local v177    # "focused":Z
    goto :goto_82

    .line 2451
    :cond_97
    const/16 v178, 0x0

    goto :goto_83

    .line 2455
    .restart local v178    # "newSessionId":Z
    .restart local v342    # "res":Z
    :cond_98
    const/4 v6, 0x0

    goto :goto_84

    .line 2460
    .end local v173    # "requestType":I
    .end local v174    # "receiver":Lcom/android/internal/os/IResultReceiver;
    .end local v175    # "receiverExtras":Landroid/os/Bundle;
    .end local v176    # "activityToken":Landroid/os/IBinder;
    .end local v177    # "focused":Z
    .end local v178    # "newSessionId":Z
    .end local v342    # "res":Z
    :pswitch_ce
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2461
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v96

    .line 2462
    .restart local v96    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v181

    .line 2463
    .local v181, "extras":Landroid/os/Bundle;
    sget-object v6, Landroid/app/assist/AssistStructure;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v182

    check-cast v182, Landroid/app/assist/AssistStructure;

    .line 2464
    .local v182, "structure":Landroid/app/assist/AssistStructure;
    sget-object v6, Landroid/app/assist/AssistContent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v183

    check-cast v183, Landroid/app/assist/AssistContent;

    .line 2465
    .local v183, "content":Landroid/app/assist/AssistContent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_99

    sget-object v6, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/Uri;

    move-object/from16 v184, v6

    .local v184, "referrer":Landroid/net/Uri;
    :goto_85
    move-object/from16 v179, p0

    move-object/from16 v180, v96

    .line 2466
    invoke-virtual/range {v179 .. v184}, Landroid/app/ActivityManagerNative;->reportAssistContextExtras(Landroid/os/IBinder;Landroid/os/Bundle;Landroid/app/assist/AssistStructure;Landroid/app/assist/AssistContent;Landroid/net/Uri;)V

    .line 2467
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2468
    const/4 v6, 0x1

    return v6

    .line 2465
    .end local v184    # "referrer":Landroid/net/Uri;
    :cond_99
    const/16 v184, 0x0

    goto :goto_85

    .line 2472
    .end local v96    # "token":Landroid/os/IBinder;
    .end local v181    # "extras":Landroid/os/Bundle;
    .end local v182    # "structure":Landroid/app/assist/AssistStructure;
    .end local v183    # "content":Landroid/app/assist/AssistContent;
    :pswitch_cf
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2473
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/Intent;

    .line 2474
    .restart local v9    # "intent":Landroid/content/Intent;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v173

    .line 2475
    .restart local v173    # "requestType":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v188

    .line 2476
    .local v188, "hint":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v189

    .line 2477
    .local v189, "userHandle":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v190

    .local v190, "args":Landroid/os/Bundle;
    move-object/from16 v185, p0

    move-object/from16 v186, v9

    move/from16 v187, v173

    .line 2478
    invoke-virtual/range {v185 .. v190}, Landroid/app/ActivityManagerNative;->launchAssistIntent(Landroid/content/Intent;ILjava/lang/String;ILandroid/os/Bundle;)Z

    move-result v0

    move/16 v342, v0

    .line 2479
    .restart local v342    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2480
    move/from16 v0, v342

    if-eqz v0, :cond_9a

    const/4 v6, 0x1

    :goto_86
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2481
    const/4 v6, 0x1

    return v6

    .line 2480
    :cond_9a
    const/4 v6, 0x0

    goto :goto_86

    .line 2485
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v173    # "requestType":I
    .end local v188    # "hint":Ljava/lang/String;
    .end local v189    # "userHandle":I
    .end local v190    # "args":Landroid/os/Bundle;
    .end local v342    # "res":Z
    :pswitch_d0
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2486
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->isAssistDataAllowedOnCurrentActivity()Z

    move-result v0

    move/16 v342, v0

    .line 2487
    .restart local v342    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2488
    move/from16 v0, v342

    if-eqz v0, :cond_9b

    const/4 v6, 0x1

    :goto_87
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2489
    const/4 v6, 0x1

    return v6

    .line 2488
    :cond_9b
    const/4 v6, 0x0

    goto :goto_87

    .line 2493
    .end local v342    # "res":Z
    :pswitch_d1
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2494
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v96

    .line 2495
    .restart local v96    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v190

    .line 2496
    .restart local v190    # "args":Landroid/os/Bundle;
    move-object/from16 v0, p0

    move-object/from16 v1, v96

    move-object/from16 v2, v190

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->showAssistFromActivity(Landroid/os/IBinder;Landroid/os/Bundle;)Z

    move-result v0

    move/16 v342, v0

    .line 2497
    .restart local v342    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2498
    move/from16 v0, v342

    if-eqz v0, :cond_9c

    const/4 v6, 0x1

    :goto_88
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2499
    const/4 v6, 0x1

    return v6

    .line 2498
    :cond_9c
    const/4 v6, 0x0

    goto :goto_88

    .line 2503
    .end local v96    # "token":Landroid/os/IBinder;
    .end local v190    # "args":Landroid/os/Bundle;
    .end local v342    # "res":Z
    :pswitch_d2
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2504
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v213

    .line 2505
    .restart local v213    # "appId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 2506
    .restart local v17    # "userId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    move-object/16 v332, v0

    .line 2507
    .restart local v332    # "reason":Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, v213

    move/from16 v2, v17

    move-object/from16 v3, v332

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->killUid(IILjava/lang/String;)V

    .line 2508
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2509
    const/4 v6, 0x1

    return v6

    .line 2513
    .end local v17    # "userId":I
    .end local v213    # "appId":I
    .end local v332    # "reason":Ljava/lang/String;
    :pswitch_d3
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2514
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v62

    .line 2515
    .restart local v62    # "who":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_9d

    const/16 v210, 0x1

    .line 2516
    .local v210, "allowRestart":Z
    :goto_89
    move-object/from16 v0, p0

    move-object/from16 v1, v62

    move/from16 v2, v210

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->hang(Landroid/os/IBinder;Z)V

    .line 2517
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2518
    const/4 v6, 0x1

    return v6

    .line 2515
    .end local v210    # "allowRestart":Z
    :cond_9d
    const/16 v210, 0x0

    goto :goto_89

    .line 2522
    .end local v62    # "who":Landroid/os/IBinder;
    :pswitch_d4
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2523
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v96

    .line 2524
    .restart local v96    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v96

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->reportActivityFullyDrawn(Landroid/os/IBinder;)V

    .line 2525
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2526
    const/4 v6, 0x1

    return v6

    .line 2530
    .end local v96    # "token":Landroid/os/IBinder;
    :pswitch_d5
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2531
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v96

    .line 2532
    .restart local v96    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v96

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->notifyActivityDrawn(Landroid/os/IBinder;)V

    .line 2533
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2534
    const/4 v6, 0x1

    return v6

    .line 2538
    .end local v96    # "token":Landroid/os/IBinder;
    :pswitch_d6
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2539
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->restart()V

    .line 2540
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2541
    const/4 v6, 0x1

    return v6

    .line 2545
    :pswitch_d7
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2546
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->performIdleMaintenance()V

    .line 2547
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2548
    const/4 v6, 0x1

    return v6

    .line 2552
    :pswitch_d8
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2553
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    move-object/16 v313, v0

    .line 2555
    .local v313, "parentActivityToken":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/app/IActivityContainerCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IActivityContainerCallback;

    move-result-object v222

    .line 2557
    .local v222, "callback":Landroid/app/IActivityContainerCallback;
    move-object/from16 v0, p0

    move-object/from16 v1, v313

    move-object/from16 v2, v222

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->createVirtualActivityContainer(Landroid/os/IBinder;Landroid/app/IActivityContainerCallback;)Landroid/app/IActivityContainer;

    move-result-object v208

    .line 2558
    .local v208, "activityContainer":Landroid/app/IActivityContainer;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2559
    if-eqz v208, :cond_9e

    .line 2560
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2561
    invoke-interface/range {v208 .. v208}, Landroid/app/IActivityContainer;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2565
    :goto_8a
    const/4 v6, 0x1

    return v6

    .line 2563
    :cond_9e
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_8a

    .line 2569
    .end local v208    # "activityContainer":Landroid/app/IActivityContainer;
    .end local v222    # "callback":Landroid/app/IActivityContainerCallback;
    .end local v313    # "parentActivityToken":Landroid/os/IBinder;
    :pswitch_d9
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2571
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/app/IActivityContainer$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IActivityContainer;

    move-result-object v208

    .line 2572
    .restart local v208    # "activityContainer":Landroid/app/IActivityContainer;
    move-object/from16 v0, p0

    move-object/from16 v1, v208

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->deleteActivityContainer(Landroid/app/IActivityContainer;)V

    .line 2573
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2574
    const/4 v6, 0x1

    return v6

    .line 2578
    .end local v208    # "activityContainer":Landroid/app/IActivityContainer;
    :pswitch_da
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2579
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v234

    .line 2580
    .local v234, "displayId":I
    move-object/from16 v0, p0

    move/from16 v1, v234

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->createStackOnDisplay(I)Landroid/app/IActivityContainer;

    move-result-object v208

    .line 2581
    .restart local v208    # "activityContainer":Landroid/app/IActivityContainer;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2582
    if-eqz v208, :cond_9f

    .line 2583
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2584
    invoke-interface/range {v208 .. v208}, Landroid/app/IActivityContainer;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2588
    :goto_8b
    const/4 v6, 0x1

    return v6

    .line 2586
    :cond_9f
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_8b

    .line 2592
    .end local v208    # "activityContainer":Landroid/app/IActivityContainer;
    .end local v234    # "displayId":I
    :pswitch_db
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2593
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v176

    .line 2594
    .restart local v176    # "activityToken":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v176

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getActivityDisplayId(Landroid/os/IBinder;)I

    move-result v234

    .line 2595
    .restart local v234    # "displayId":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2596
    move-object/from16 v0, p3

    move/from16 v1, v234

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2597
    const/4 v6, 0x1

    return v6

    .line 2601
    .end local v176    # "activityToken":Landroid/os/IBinder;
    .end local v234    # "displayId":I
    :pswitch_dc
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2602
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v72

    .line 2603
    .restart local v72    # "taskId":I
    move-object/from16 v0, p0

    move/from16 v1, v72

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->startLockTaskMode(I)V

    .line 2604
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2605
    const/4 v6, 0x1

    return v6

    .line 2609
    .end local v72    # "taskId":I
    :pswitch_dd
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2610
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v96

    .line 2611
    .restart local v96    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v96

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->startLockTaskMode(Landroid/os/IBinder;)V

    .line 2612
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2613
    const/4 v6, 0x1

    return v6

    .line 2617
    .end local v96    # "token":Landroid/os/IBinder;
    :pswitch_de
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2618
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v72

    .line 2619
    .restart local v72    # "taskId":I
    move-object/from16 v0, p0

    move/from16 v1, v72

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->startSystemLockTaskMode(I)V

    .line 2620
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2621
    const/4 v6, 0x1

    return v6

    .line 2625
    .end local v72    # "taskId":I
    :pswitch_df
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2626
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->stopLockTaskMode()V

    .line 2627
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2628
    const/4 v6, 0x1

    return v6

    .line 2632
    :pswitch_e0
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2633
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->stopSystemLockTaskMode()V

    .line 2634
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2635
    const/4 v6, 0x1

    return v6

    .line 2639
    :pswitch_e1
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2640
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->isInLockTaskMode()Z

    move-result v0

    move/16 v274, v0

    .line 2641
    .local v274, "isInLockTaskMode":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2642
    move/from16 v0, v274

    if-eqz v0, :cond_a0

    const/4 v6, 0x1

    :goto_8c
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2643
    const/4 v6, 0x1

    return v6

    .line 2642
    :cond_a0
    const/4 v6, 0x0

    goto :goto_8c

    .line 2647
    .end local v274    # "isInLockTaskMode":Z
    :pswitch_e2
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2648
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getLockTaskModeState()I

    move-result v0

    move/16 v292, v0

    .line 2649
    .local v292, "lockTaskModeState":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2650
    move-object/from16 v0, p3

    move/from16 v1, v292

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2651
    const/4 v6, 0x1

    return v6

    .line 2655
    .end local v292    # "lockTaskModeState":I
    :pswitch_e3
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2656
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v96

    .line 2657
    .restart local v96    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v96

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->showLockTaskEscapeMessage(Landroid/os/IBinder;)V

    .line 2658
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2659
    const/4 v6, 0x1

    return v6

    .line 2663
    .end local v96    # "token":Landroid/os/IBinder;
    :pswitch_e4
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2664
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v96

    .line 2666
    .restart local v96    # "token":Landroid/os/IBinder;
    sget-object v6, Landroid/app/ActivityManager$TaskDescription;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object/16 v385, v0

    move-object/from16 v0, v385

    check-cast v0, Landroid/app/ActivityManager$TaskDescription;

    move-object/16 v385, v0

    .line 2667
    .local v385, "values":Landroid/app/ActivityManager$TaskDescription;
    move-object/from16 v0, p0

    move-object/from16 v1, v96

    move-object/from16 v2, v385

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->setTaskDescription(Landroid/os/IBinder;Landroid/app/ActivityManager$TaskDescription;)V

    .line 2668
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2669
    const/4 v6, 0x1

    return v6

    .line 2673
    .end local v96    # "token":Landroid/os/IBinder;
    .end local v385    # "values":Landroid/app/ActivityManager$TaskDescription;
    :pswitch_e5
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2674
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v72

    .line 2675
    .restart local v72    # "taskId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v345, v0

    .line 2676
    .local v345, "resizeableMode":I
    move-object/from16 v0, p0

    move/from16 v1, v72

    move/from16 v2, v345

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->setTaskResizeable(II)V

    .line 2677
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2678
    const/4 v6, 0x1

    return v6

    .line 2682
    .end local v72    # "taskId":I
    .end local v345    # "resizeableMode":I
    :pswitch_e6
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2683
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v72

    .line 2684
    .restart local v72    # "taskId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v344, v0

    .line 2685
    .local v344, "resizeMode":I
    sget-object v6, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v80

    check-cast v80, Landroid/graphics/Rect;

    .line 2686
    .local v80, "r":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    move/from16 v1, v72

    move-object/from16 v2, v80

    move/from16 v3, v344

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->resizeTask(ILandroid/graphics/Rect;I)V

    .line 2687
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2688
    const/4 v6, 0x1

    return v6

    .line 2692
    .end local v72    # "taskId":I
    .end local v80    # "r":Landroid/graphics/Rect;
    .end local v344    # "resizeMode":I
    :pswitch_e7
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2693
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v72

    .line 2694
    .restart local v72    # "taskId":I
    move-object/from16 v0, p0

    move/from16 v1, v72

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getTaskBounds(I)Landroid/graphics/Rect;

    move-result-object v80

    .line 2695
    .restart local v80    # "r":Landroid/graphics/Rect;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2696
    const/4 v6, 0x0

    move-object/from16 v0, v80

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2697
    const/4 v6, 0x1

    return v6

    .line 2701
    .end local v72    # "taskId":I
    .end local v80    # "r":Landroid/graphics/Rect;
    :pswitch_e8
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2702
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v241

    .line 2703
    .local v241, "filename":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 2704
    .restart local v17    # "userId":I
    move-object/from16 v0, p0

    move-object/from16 v1, v241

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->getTaskDescriptionIcon(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    move-object/16 v257, v0

    .line 2705
    .local v257, "icon":Landroid/graphics/Bitmap;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2706
    move-object/from16 v0, v257

    if-nez v0, :cond_a1

    .line 2707
    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2712
    :goto_8d
    const/4 v6, 0x1

    return v6

    .line 2709
    :cond_a1
    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2710
    const/4 v6, 0x0

    move-object/from16 v0, v257

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v6}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_8d

    .line 2716
    .end local v17    # "userId":I
    .end local v241    # "filename":Ljava/lang/String;
    .end local v257    # "icon":Landroid/graphics/Bitmap;
    :pswitch_e9
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2718
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-nez v6, :cond_a2

    .line 2719
    const/16 v221, 0x0

    .line 2723
    :goto_8e
    invoke-static/range {v221 .. v221}, Landroid/app/ActivityOptions;->fromBundle(Landroid/os/Bundle;)Landroid/app/ActivityOptions;

    move-result-object v0

    move-object/16 v310, v0

    .line 2724
    .restart local v310    # "options":Landroid/app/ActivityOptions;
    move-object/from16 v0, p0

    move-object/from16 v1, v310

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->startInPlaceAnimationOnFrontMostApplication(Landroid/app/ActivityOptions;)V

    .line 2725
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2726
    const/4 v6, 0x1

    return v6

    .line 2721
    .end local v310    # "options":Landroid/app/ActivityOptions;
    :cond_a2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v221

    .restart local v221    # "bundle":Landroid/os/Bundle;
    goto :goto_8e

    .line 2730
    .end local v221    # "bundle":Landroid/os/Bundle;
    :pswitch_ea
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2731
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v96

    .line 2732
    .restart local v96    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-lez v6, :cond_a3

    const/16 v237, 0x1

    .line 2733
    .local v237, "enable":Z
    :goto_8f
    move-object/from16 v0, p0

    move-object/from16 v1, v96

    move/from16 v2, v237

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->requestVisibleBehind(Landroid/os/IBinder;Z)Z

    move-result v0

    move/16 v368, v0

    .line 2734
    .restart local v368    # "success":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2735
    move/from16 v0, v368

    if-eqz v0, :cond_a4

    const/4 v6, 0x1

    :goto_90
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2736
    const/4 v6, 0x1

    return v6

    .line 2732
    .end local v237    # "enable":Z
    .end local v368    # "success":Z
    :cond_a3
    const/16 v237, 0x0

    goto :goto_8f

    .line 2735
    .restart local v237    # "enable":Z
    .restart local v368    # "success":Z
    :cond_a4
    const/4 v6, 0x0

    goto :goto_90

    .line 2740
    .end local v96    # "token":Landroid/os/IBinder;
    .end local v237    # "enable":Z
    .end local v368    # "success":Z
    :pswitch_eb
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2741
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v96

    .line 2742
    .restart local v96    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v96

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->isBackgroundVisibleBehind(Landroid/os/IBinder;)Z

    move-result v238

    .line 2743
    .restart local v238    # "enabled":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2744
    if-eqz v238, :cond_a5

    const/4 v6, 0x1

    :goto_91
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2745
    const/4 v6, 0x1

    return v6

    .line 2744
    :cond_a5
    const/4 v6, 0x0

    goto :goto_91

    .line 2749
    .end local v96    # "token":Landroid/os/IBinder;
    .end local v238    # "enabled":Z
    :pswitch_ec
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2750
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v96

    .line 2751
    .restart local v96    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v96

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->backgroundResourcesReleased(Landroid/os/IBinder;)V

    .line 2752
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2753
    const/4 v6, 0x1

    return v6

    .line 2757
    .end local v96    # "token":Landroid/os/IBinder;
    :pswitch_ed
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2758
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v96

    .line 2759
    .restart local v96    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v96

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->notifyLaunchTaskBehindComplete(Landroid/os/IBinder;)V

    .line 2760
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2761
    const/4 v6, 0x1

    return v6

    .line 2765
    .end local v96    # "token":Landroid/os/IBinder;
    :pswitch_ee
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2766
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v96

    .line 2767
    .restart local v96    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v96

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->notifyEnterAnimationComplete(Landroid/os/IBinder;)V

    .line 2768
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2769
    const/4 v6, 0x1

    return v6

    .line 2773
    .end local v96    # "token":Landroid/os/IBinder;
    :pswitch_ef
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2774
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->bootAnimationComplete()V

    .line 2775
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2776
    const/4 v6, 0x1

    return v6

    .line 2780
    :pswitch_f0
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2781
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v135

    .line 2782
    .restart local v135    # "uid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v243

    .line 2783
    .local v243, "firstPacket":[B
    move-object/from16 v0, p0

    move/from16 v1, v135

    move-object/from16 v2, v243

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->notifyCleartextNetwork(I[B)V

    .line 2784
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2785
    const/4 v6, 0x1

    return v6

    .line 2789
    .end local v135    # "uid":I
    .end local v243    # "firstPacket":[B
    :pswitch_f1
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2790
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v192

    .line 2791
    .local v192, "procName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v135

    .line 2792
    .restart local v135    # "uid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v194

    .line 2793
    .local v194, "maxMemSize":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v196

    .local v196, "reportPackage":Ljava/lang/String;
    move-object/from16 v191, p0

    move/from16 v193, v135

    .line 2794
    invoke-virtual/range {v191 .. v196}, Landroid/app/ActivityManagerNative;->setDumpHeapDebugLimit(Ljava/lang/String;IJLjava/lang/String;)V

    .line 2795
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2796
    const/4 v6, 0x1

    return v6

    .line 2800
    .end local v135    # "uid":I
    .end local v192    # "procName":Ljava/lang/String;
    .end local v194    # "maxMemSize":J
    .end local v196    # "reportPackage":Ljava/lang/String;
    :pswitch_f2
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2801
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v165

    .line 2802
    .restart local v165    # "path":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v165

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->dumpHeapFinished(Ljava/lang/String;)V

    .line 2803
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2804
    const/4 v6, 0x1

    return v6

    .line 2808
    .end local v165    # "path":Ljava/lang/String;
    :pswitch_f3
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2810
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 2809
    invoke-static {v6}, Landroid/service/voice/IVoiceInteractionSession$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/voice/IVoiceInteractionSession;

    move-result-object v46

    .line 2811
    .restart local v46    # "session":Landroid/service/voice/IVoiceInteractionSession;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_a6

    const/4 v0, 0x1

    move/16 v277, v0

    .line 2812
    .local v277, "keepAwake":Z
    :goto_92
    move-object/from16 v0, p0

    move-object/from16 v1, v46

    move/from16 v2, v277

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->setVoiceKeepAwake(Landroid/service/voice/IVoiceInteractionSession;Z)V

    .line 2813
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2814
    const/4 v6, 0x1

    return v6

    .line 2811
    .end local v277    # "keepAwake":Z
    :cond_a6
    const/4 v0, 0x0

    move/16 v277, v0

    goto :goto_92

    .line 2818
    .end local v46    # "session":Landroid/service/voice/IVoiceInteractionSession;
    :pswitch_f4
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2819
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 2820
    .restart local v17    # "userId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v0

    move-object/16 v312, v0

    .line 2821
    .local v312, "packages":[Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v312

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->updateLockTaskPackages(I[Ljava/lang/String;)V

    .line 2822
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2823
    const/4 v6, 0x1

    return v6

    .line 2827
    .end local v17    # "userId":I
    .end local v312    # "packages":[Ljava/lang/String;
    :pswitch_f5
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2828
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v32

    .line 2829
    .restart local v32    # "packageName":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->updateDeviceOwner(Ljava/lang/String;)V

    .line 2830
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2831
    const/4 v6, 0x1

    return v6

    .line 2835
    .end local v32    # "packageName":Ljava/lang/String;
    :pswitch_f6
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2836
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    move-object/16 v321, v0

    .line 2837
    .restart local v321    # "pkg":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 2838
    .restart local v8    # "callingPackage":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v321

    invoke-virtual {v0, v1, v8}, Landroid/app/ActivityManagerNative;->getPackageProcessState(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    move/16 v336, v0

    .line 2839
    .restart local v336    # "res":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2840
    move-object/from16 v0, p3

    move/from16 v1, v336

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2841
    const/4 v6, 0x1

    return v6

    .line 2845
    .end local v8    # "callingPackage":Ljava/lang/String;
    .end local v321    # "pkg":Ljava/lang/String;
    .end local v336    # "res":I
    :pswitch_f7
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2846
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v143

    .line 2847
    .restart local v143    # "process":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 2848
    .restart local v17    # "userId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v278, v0

    .line 2849
    .restart local v278    # "level":I
    move-object/from16 v0, p0

    move-object/from16 v1, v143

    move/from16 v2, v17

    move/from16 v3, v278

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->setProcessMemoryTrimLevel(Ljava/lang/String;II)Z

    move-result v0

    move/16 v342, v0

    .line 2850
    .restart local v342    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2851
    move/from16 v0, v342

    if-eqz v0, :cond_a7

    const/4 v6, 0x1

    :goto_93
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2852
    const/4 v6, 0x1

    return v6

    .line 2851
    :cond_a7
    const/4 v6, 0x0

    goto :goto_93

    .line 2856
    .end local v17    # "userId":I
    .end local v143    # "process":Ljava/lang/String;
    .end local v278    # "level":I
    .end local v342    # "res":Z
    :pswitch_f8
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2857
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v96

    .line 2858
    .restart local v96    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v96

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->isRootVoiceInteraction(Landroid/os/IBinder;)Z

    move-result v0

    move/16 v342, v0

    .line 2859
    .restart local v342    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2860
    move/from16 v0, v342

    if-eqz v0, :cond_a8

    const/4 v6, 0x1

    :goto_94
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2861
    const/4 v6, 0x1

    return v6

    .line 2860
    :cond_a8
    const/4 v6, 0x0

    goto :goto_94

    .line 2865
    .end local v96    # "token":Landroid/os/IBinder;
    .end local v342    # "res":Z
    :pswitch_f9
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2866
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->startBinderTracking()Z

    move-result v0

    move/16 v342, v0

    .line 2867
    .restart local v342    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2868
    move/from16 v0, v342

    if-eqz v0, :cond_a9

    const/4 v6, 0x1

    :goto_95
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2869
    const/4 v6, 0x1

    return v6

    .line 2868
    :cond_a9
    const/4 v6, 0x0

    goto :goto_95

    .line 2873
    .end local v342    # "res":Z
    :pswitch_fa
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2874
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_aa

    .line 2875
    sget-object v6, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/ParcelFileDescriptor;

    move-object/from16 v166, v6

    .line 2876
    .restart local v166    # "fd":Landroid/os/ParcelFileDescriptor;
    :goto_96
    move-object/from16 v0, p0

    move-object/from16 v1, v166

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->stopBinderTrackingAndDump(Landroid/os/ParcelFileDescriptor;)Z

    move-result v0

    move/16 v342, v0

    .line 2877
    .restart local v342    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2878
    move/from16 v0, v342

    if-eqz v0, :cond_ab

    const/4 v6, 0x1

    :goto_97
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2879
    const/4 v6, 0x1

    return v6

    .line 2875
    .end local v166    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v342    # "res":Z
    :cond_aa
    const/16 v166, 0x0

    goto :goto_96

    .line 2878
    .restart local v166    # "fd":Landroid/os/ParcelFileDescriptor;
    .restart local v342    # "res":Z
    :cond_ab
    const/4 v6, 0x0

    goto :goto_97

    .line 2882
    .end local v166    # "fd":Landroid/os/ParcelFileDescriptor;
    .end local v342    # "res":Z
    :pswitch_fb
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2883
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v96

    .line 2884
    .restart local v96    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v96

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getActivityStackId(Landroid/os/IBinder;)I

    move-result v79

    .line 2885
    .restart local v79    # "stackId":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2886
    move-object/from16 v0, p3

    move/from16 v1, v79

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2887
    const/4 v6, 0x1

    return v6

    .line 2890
    .end local v79    # "stackId":I
    .end local v96    # "token":Landroid/os/IBinder;
    :pswitch_fc
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2891
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v96

    .line 2892
    .restart local v96    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v96

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->exitFreeformMode(Landroid/os/IBinder;)V

    .line 2893
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2894
    const/4 v6, 0x1

    return v6

    .line 2897
    .end local v96    # "token":Landroid/os/IBinder;
    :pswitch_fd
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2898
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v96

    .line 2899
    .restart local v96    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/app/ActivityManagerNative;->readIntArray(Landroid/os/Parcel;)[I

    move-result-object v255

    .line 2900
    .local v255, "horizontal":[I
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/app/ActivityManagerNative;->readIntArray(Landroid/os/Parcel;)[I

    move-result-object v0

    move-object/16 v386, v0

    .line 2901
    .local v386, "vertical":[I
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/app/ActivityManagerNative;->readIntArray(Landroid/os/Parcel;)[I

    move-result-object v0

    move-object/16 v360, v0

    .line 2902
    .local v360, "smallest":[I
    move-object/from16 v0, p0

    move-object/from16 v1, v96

    move-object/from16 v2, v255

    move-object/from16 v3, v386

    move-object/from16 v4, v360

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/ActivityManagerNative;->reportSizeConfigurations(Landroid/os/IBinder;[I[I[I)V

    .line 2903
    const/4 v6, 0x1

    return v6

    .line 2906
    .end local v96    # "token":Landroid/os/IBinder;
    .end local v255    # "horizontal":[I
    .end local v360    # "smallest":[I
    .end local v386    # "vertical":[I
    :pswitch_fe
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2907
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v6, v0, :cond_ac

    const/4 v0, 0x1

    move/16 v369, v0

    .line 2908
    .local v369, "suppress":Z
    :goto_98
    move-object/from16 v0, p0

    move/from16 v1, v369

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->suppressResizeConfigChanges(Z)V

    .line 2909
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2910
    const/4 v6, 0x1

    return v6

    .line 2907
    .end local v369    # "suppress":Z
    :cond_ac
    const/4 v0, 0x0

    move/16 v369, v0

    goto :goto_98

    .line 2913
    :pswitch_ff
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2914
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v79

    .line 2915
    .restart local v79    # "stackId":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v6, v0, :cond_ad

    const/4 v0, 0x1

    move/16 v308, v0

    .line 2916
    .local v308, "onTop":Z
    :goto_99
    move-object/from16 v0, p0

    move/from16 v1, v79

    move/from16 v2, v308

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->moveTasksToFullscreenStack(IZ)V

    .line 2917
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2918
    const/4 v6, 0x1

    return v6

    .line 2915
    .end local v308    # "onTop":Z
    :cond_ad
    const/4 v0, 0x0

    move/16 v308, v0

    goto :goto_99

    .line 2921
    .end local v79    # "stackId":I
    :pswitch_100
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2922
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v135

    .line 2923
    .restart local v135    # "uid":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    move-object/16 v321, v0

    .line 2924
    .restart local v321    # "pkg":Ljava/lang/String;
    move-object/from16 v0, p0

    move/from16 v1, v135

    move-object/from16 v2, v321

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->getAppStartMode(ILjava/lang/String;)I

    move-result v0

    move/16 v336, v0

    .line 2925
    .restart local v336    # "res":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2926
    move-object/from16 v0, p3

    move/from16 v1, v336

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2927
    const/4 v6, 0x1

    return v6

    .line 2930
    .end local v135    # "uid":I
    .end local v321    # "pkg":Ljava/lang/String;
    .end local v336    # "res":I
    :pswitch_101
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2931
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v96

    .line 2932
    .restart local v96    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v96

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->isInMultiWindowMode(Landroid/os/IBinder;)Z

    move-result v0

    move/16 v260, v0

    .line 2933
    .local v260, "inMultiWindow":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2934
    move/from16 v0, v260

    if-eqz v0, :cond_ae

    const/4 v6, 0x1

    :goto_9a
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2935
    const/4 v6, 0x1

    return v6

    .line 2934
    :cond_ae
    const/4 v6, 0x0

    goto :goto_9a

    .line 2938
    .end local v96    # "token":Landroid/os/IBinder;
    .end local v260    # "inMultiWindow":Z
    :pswitch_102
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2939
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v96

    .line 2940
    .restart local v96    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v96

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->isInPictureInPictureMode(Landroid/os/IBinder;)Z

    move-result v0

    move/16 v261, v0

    .line 2941
    .local v261, "inPip":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2942
    move/from16 v0, v261

    if-eqz v0, :cond_af

    const/4 v6, 0x1

    :goto_9b
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2943
    const/4 v6, 0x1

    return v6

    .line 2942
    :cond_af
    const/4 v6, 0x0

    goto :goto_9b

    .line 2946
    .end local v96    # "token":Landroid/os/IBinder;
    .end local v261    # "inPip":Z
    :pswitch_103
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2947
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v96

    .line 2948
    .restart local v96    # "token":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v96

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->enterPictureInPictureMode(Landroid/os/IBinder;)V

    .line 2949
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2950
    const/4 v6, 0x1

    return v6

    .line 2953
    .end local v96    # "token":Landroid/os/IBinder;
    :pswitch_104
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2954
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v96

    .line 2955
    .restart local v96    # "token":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v6, v0, :cond_b0

    const/16 v237, 0x1

    .line 2956
    .local v237, "enable":Z
    :goto_9c
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object/16 v311, v0

    move-object/from16 v0, v311

    check-cast v0, Landroid/content/ComponentName;

    move-object/16 v311, v0

    .line 2957
    .local v311, "packageName":Landroid/content/ComponentName;
    move-object/from16 v0, p0

    move-object/from16 v1, v96

    move/from16 v2, v237

    move-object/from16 v3, v311

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->setVrMode(Landroid/os/IBinder;ZLandroid/content/ComponentName;)I

    move-result v0

    move/16 v336, v0

    .line 2958
    .restart local v336    # "res":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2959
    move-object/from16 v0, p3

    move/from16 v1, v336

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2960
    const/4 v6, 0x1

    return v6

    .line 2955
    .end local v237    # "enable":Z
    .end local v311    # "packageName":Landroid/content/ComponentName;
    .end local v336    # "res":I
    :cond_b0
    const/16 v237, 0x0

    .restart local v237    # "enable":Z
    goto :goto_9c

    .line 2963
    .end local v96    # "token":Landroid/os/IBinder;
    .end local v237    # "enable":Z
    :pswitch_105
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2964
    sget-object v6, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object/16 v311, v0

    move-object/from16 v0, v311

    check-cast v0, Landroid/content/ComponentName;

    move-object/16 v311, v0

    .line 2965
    .restart local v311    # "packageName":Landroid/content/ComponentName;
    move-object/from16 v0, p0

    move-object/from16 v1, v311

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->isVrModePackageEnabled(Landroid/content/ComponentName;)Z

    move-result v0

    move/16 v342, v0

    .line 2966
    .restart local v342    # "res":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2967
    move/from16 v0, v342

    if-eqz v0, :cond_b1

    const/4 v6, 0x1

    :goto_9d
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2968
    const/4 v6, 0x1

    return v6

    .line 2967
    :cond_b1
    const/4 v6, 0x0

    goto :goto_9d

    .line 2971
    .end local v311    # "packageName":Landroid/content/ComponentName;
    .end local v342    # "res":Z
    :pswitch_106
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2972
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v189

    .line 2973
    .restart local v189    # "userHandle":I
    move-object/from16 v0, p0

    move/from16 v1, v189

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->isAppForeground(I)Z

    move-result v0

    move/16 v272, v0

    .line 2974
    .restart local v272    # "isForeground":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2975
    move/from16 v0, v272

    if-eqz v0, :cond_b2

    const/4 v6, 0x1

    :goto_9e
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2976
    const/4 v6, 0x1

    return v6

    .line 2975
    :cond_b2
    const/4 v6, 0x0

    goto :goto_9e

    .line 2979
    .end local v189    # "userHandle":I
    .end local v272    # "isForeground":Z
    :pswitch_107
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2980
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2981
    const/4 v6, 0x1

    return v6

    .line 2984
    :pswitch_108
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2985
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v79

    .line 2986
    .restart local v79    # "stackId":I
    move-object/from16 v0, p0

    move/from16 v1, v79

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->removeStack(I)V

    .line 2987
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2988
    const/4 v6, 0x1

    return v6

    .line 2991
    .end local v79    # "stackId":I
    :pswitch_109
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2992
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 2993
    .restart local v17    # "userId":I
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->notifyLockedProfile(I)V

    .line 2994
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2995
    const/4 v6, 0x1

    return v6

    .line 2998
    .end local v17    # "userId":I
    :pswitch_10a
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2999
    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/Intent;

    .line 3000
    .restart local v9    # "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/app/ActivityManagerNative;->startConfirmDeviceCredentialIntent(Landroid/content/Intent;)V

    .line 3001
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3002
    const/4 v6, 0x1

    return v6

    .line 3005
    .end local v9    # "intent":Landroid/content/Intent;
    :pswitch_10b
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3006
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->sendIdleJobTrigger()V

    .line 3007
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3008
    const/4 v6, 0x1

    return v6

    .line 3011
    :pswitch_10c
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3012
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v198

    .line 3013
    .local v198, "sender":Landroid/content/IIntentSender;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v199

    .line 3014
    .local v199, "scode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_b3

    sget-object v6, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/Intent;

    .line 3015
    :goto_9f
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 3017
    .restart local v10    # "resolvedType":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    .line 3016
    invoke-static {v6}, Landroid/content/IIntentReceiver$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentReceiver;

    move-result-object v202

    .line 3018
    .local v202, "finishedReceiver":Landroid/content/IIntentReceiver;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v203

    .line 3019
    .local v203, "requiredPermission":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_b4

    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Bundle;

    move-object/from16 v16, v6

    .local v16, "options":Landroid/os/Bundle;
    :goto_a0
    move-object/from16 v197, p0

    move-object/from16 v200, v9

    move-object/from16 v201, v10

    move-object/from16 v204, v16

    .line 3020
    invoke-virtual/range {v197 .. v204}, Landroid/app/ActivityManagerNative;->sendIntentSender(Landroid/content/IIntentSender;ILandroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;Ljava/lang/String;Landroid/os/Bundle;)I

    move-result v0

    move/16 v346, v0

    .line 3022
    .restart local v346    # "result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3023
    move-object/from16 v0, p3

    move/from16 v1, v346

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3024
    const/4 v6, 0x1

    return v6

    .line 3014
    .end local v10    # "resolvedType":Ljava/lang/String;
    .end local v16    # "options":Landroid/os/Bundle;
    .end local v202    # "finishedReceiver":Landroid/content/IIntentReceiver;
    .end local v203    # "requiredPermission":Ljava/lang/String;
    .end local v346    # "result":I
    :cond_b3
    const/4 v9, 0x0

    .local v9, "intent":Landroid/content/Intent;
    goto :goto_9f

    .line 3019
    .end local v9    # "intent":Landroid/content/Intent;
    .restart local v10    # "resolvedType":Ljava/lang/String;
    .restart local v202    # "finishedReceiver":Landroid/content/IIntentReceiver;
    .restart local v203    # "requiredPermission":Ljava/lang/String;
    :cond_b4
    const/16 v16, 0x0

    goto :goto_a0

    .line 3027
    .end local v10    # "resolvedType":Ljava/lang/String;
    .end local v198    # "sender":Landroid/content/IIntentSender;
    .end local v199    # "scode":I
    .end local v202    # "finishedReceiver":Landroid/content/IIntentReceiver;
    .end local v203    # "requiredPermission":Ljava/lang/String;
    :pswitch_10d
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3028
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v378, v0

    .line 3029
    .local v378, "tid":I
    move-object/from16 v0, p0

    move/from16 v1, v378

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->setVrThread(I)V

    .line 3030
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3031
    const/4 v6, 0x1

    return v6

    .line 3034
    .end local v378    # "tid":I
    :pswitch_10e
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3035
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v378, v0

    .line 3036
    .restart local v378    # "tid":I
    move-object/from16 v0, p0

    move/from16 v1, v378

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->setRenderThread(I)V

    .line 3037
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3038
    const/4 v6, 0x1

    return v6

    .line 3041
    .end local v378    # "tid":I
    :pswitch_10f
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3042
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_b5

    const/16 v254, 0x1

    .line 3043
    .local v254, "hasTopUi":Z
    :goto_a1
    move-object/from16 v0, p0

    move/from16 v1, v254

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->setHasTopUi(Z)V

    .line 3044
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3045
    const/4 v6, 0x1

    return v6

    .line 3042
    .end local v254    # "hasTopUi":Z
    :cond_b5
    const/16 v254, 0x0

    goto :goto_a1

    .line 3048
    :pswitch_110
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3049
    sget-object v6, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v6, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object/16 v270, v0

    move-object/from16 v0, v270

    check-cast v0, Landroid/app/PendingIntent;

    move-object/16 v270, v0

    .line 3050
    .local v270, "intent":Landroid/app/PendingIntent;
    move-object/from16 v0, p0

    move-object/from16 v1, v270

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->canBypassWorkChallenge(Landroid/app/PendingIntent;)Z

    move-result v0

    move/16 v348, v0

    .line 3051
    .restart local v348    # "result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3052
    move/from16 v0, v348

    if-eqz v0, :cond_b6

    const/4 v6, 0x1

    :goto_a2
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 3053
    const/4 v6, 0x1

    return v6

    .line 3052
    :cond_b6
    const/4 v6, 0x0

    goto :goto_a2

    .line 3058
    .end local v270    # "intent":Landroid/app/PendingIntent;
    .end local v348    # "result":Z
    :pswitch_111
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3059
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v356, v0

    .line 3060
    .local v356, "serviceIndex":I
    move-object/from16 v0, p0

    move/from16 v1, v356

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getPermissionServiceBinderProxy(I)Landroid/os/IBinder;

    move-result-object v0

    move-object/16 v329, v0

    .line 3061
    .local v329, "proxy":Landroid/os/IBinder;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3062
    move-object/from16 v0, p3

    move-object/from16 v1, v329

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3063
    const/4 v6, 0x1

    return v6

    .line 3066
    .end local v329    # "proxy":Landroid/os/IBinder;
    .end local v356    # "serviceIndex":I
    :pswitch_112
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3067
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    move-object/16 v329, v0

    .line 3068
    .restart local v329    # "proxy":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v356, v0

    .line 3069
    .restart local v356    # "serviceIndex":I
    move-object/from16 v0, p0

    move-object/from16 v1, v329

    move/from16 v2, v356

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->setPermissionServiceBinderProxy(Landroid/os/IBinder;I)V

    .line 3070
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3071
    const/4 v6, 0x1

    return v6

    .line 3076
    .end local v329    # "proxy":Landroid/os/IBinder;
    .end local v356    # "serviceIndex":I
    :pswitch_113
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3077
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    move-object/16 v327, v0

    .line 3078
    .restart local v327    # "processName":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v327

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->setIgnoredAnrProcess(Ljava/lang/String;)V

    .line 3079
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3080
    const/4 v6, 0x1

    return v6

    .line 3083
    .end local v327    # "processName":Ljava/lang/String;
    :pswitch_114
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3084
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_b7

    const/4 v0, 0x1

    move/16 v334, v0

    .line 3085
    .local v334, "request":Z
    :goto_a3
    move-object/from16 v0, p0

    move/from16 v1, v334

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->isRequestPermission(Z)V

    .line 3086
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3087
    const/4 v6, 0x1

    return v6

    .line 3084
    .end local v334    # "request":Z
    :cond_b7
    const/4 v0, 0x0

    move/16 v334, v0

    goto :goto_a3

    .line 3095
    :pswitch_115
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3096
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    move-object/16 v321, v0

    .line 3097
    .restart local v321    # "pkg":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v321

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getAppBootMode(Ljava/lang/String;)I

    move-result v136

    .line 3098
    .restart local v136    # "mode":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3099
    move-object/from16 v0, p3

    move/from16 v1, v136

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3100
    const/4 v6, 0x1

    return v6

    .line 3104
    .end local v136    # "mode":I
    .end local v321    # "pkg":Ljava/lang/String;
    :pswitch_116
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3105
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    move-object/16 v321, v0

    .line 3106
    .restart local v321    # "pkg":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v136

    .line 3107
    .restart local v136    # "mode":I
    move-object/from16 v0, p0

    move-object/from16 v1, v321

    move/from16 v2, v136

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->setAppBootMode(Ljava/lang/String;I)I

    move-result v0

    move/16 v352, v0

    .line 3108
    .local v352, "ret":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3109
    move-object/from16 v0, p3

    move/from16 v1, v352

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3110
    const/4 v6, 0x1

    return v6

    .line 3114
    .end local v136    # "mode":I
    .end local v321    # "pkg":Ljava/lang/String;
    .end local v352    # "ret":I
    :pswitch_117
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3115
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getAppBootState()Z

    move-result v0

    move/16 v276, v0

    .line 3116
    .restart local v276    # "isit":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3117
    move/from16 v0, v276

    if-eqz v0, :cond_b8

    const/4 v6, 0x1

    :goto_a4
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 3118
    const/4 v6, 0x1

    return v6

    .line 3117
    :cond_b8
    const/4 v6, 0x0

    goto :goto_a4

    .line 3122
    .end local v276    # "isit":Z
    :pswitch_118
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3123
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_b9

    const/4 v0, 0x1

    move/16 v366, v0

    .line 3124
    .local v366, "state":Z
    :goto_a5
    move-object/from16 v0, p0

    move/from16 v1, v366

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->setAppBootState(Z)V

    .line 3125
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3126
    const/4 v6, 0x1

    return v6

    .line 3123
    .end local v366    # "state":Z
    :cond_b9
    const/4 v0, 0x0

    move/16 v366, v0

    goto :goto_a5

    .line 3129
    :pswitch_119
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3130
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v244

    .line 3131
    .local v244, "flag":I
    move-object/from16 v0, p0

    move/from16 v1, v244

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getAllAppBootModes(I)Ljava/util/List;

    move-result-object v0

    move-object/16 v281, v0

    .line 3132
    .local v281, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$AppBootMode;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3133
    move-object/from16 v0, p3

    move-object/from16 v1, v281

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 3134
    const/4 v6, 0x1

    return v6

    .line 3137
    .end local v244    # "flag":I
    .end local v281    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$AppBootMode;>;"
    :pswitch_11a
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3138
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v32

    .line 3139
    .restart local v32    # "packageName":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getCallerPackageArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    move-object/16 v322, v0

    .line 3140
    .local v322, "pkgArray":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3141
    move-object/from16 v0, p3

    move-object/from16 v1, v322

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 3142
    const/4 v6, 0x1

    return v6

    .line 3145
    .end local v32    # "packageName":Ljava/lang/String;
    .end local v322    # "pkgArray":[Ljava/lang/String;
    :pswitch_11b
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3146
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v32

    .line 3147
    .restart local v32    # "packageName":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getCalleePackageArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    move-object/16 v322, v0

    .line 3148
    .restart local v322    # "pkgArray":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3149
    move-object/from16 v0, p3

    move-object/from16 v1, v322

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 3150
    const/4 v6, 0x1

    return v6

    .line 3154
    .end local v32    # "packageName":Ljava/lang/String;
    .end local v322    # "pkgArray":[Ljava/lang/String;
    :pswitch_11c
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3155
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    move-object/16 v321, v0

    .line 3156
    .restart local v321    # "pkg":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v244

    .line 3157
    .restart local v244    # "flag":I
    move-object/from16 v0, p0

    move-object/from16 v1, v321

    move/from16 v2, v244

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->updateAccesibilityServiceFlag(Ljava/lang/String;I)V

    .line 3158
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3159
    const/4 v6, 0x1

    return v6

    .line 3165
    .end local v244    # "flag":I
    .end local v321    # "pkg":Ljava/lang/String;
    :pswitch_11d
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3166
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getBgPowerHungryList()Ljava/util/List;

    move-result-object v0

    move-object/16 v283, v0

    .line 3167
    .local v283, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$HighPowerApp;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3168
    move-object/from16 v0, p3

    move-object/from16 v1, v283

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 3169
    const/4 v6, 0x1

    return v6

    .line 3172
    .end local v283    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$HighPowerApp;>;"
    :pswitch_11e
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3173
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_ba

    const/16 v216, 0x1

    .line 3174
    .local v216, "auto":Z
    :goto_a6
    move-object/from16 v0, p0

    move/from16 v1, v216

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->setBgMonitorMode(Z)V

    .line 3175
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3176
    const/4 v6, 0x1

    return v6

    .line 3173
    .end local v216    # "auto":Z
    :cond_ba
    const/16 v216, 0x0

    goto :goto_a6

    .line 3179
    :pswitch_11f
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3180
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    move-object/16 v323, v0

    .line 3181
    .local v323, "pkgName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v278, v0

    .line 3182
    .restart local v278    # "level":I
    move-object/from16 v0, p0

    move-object/from16 v1, v323

    move/from16 v2, v278

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->stopBgPowerHungryApp(Ljava/lang/String;I)V

    .line 3183
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3184
    const/4 v6, 0x1

    return v6

    .line 3187
    .end local v278    # "level":I
    .end local v323    # "pkgName":Ljava/lang/String;
    :pswitch_120
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3188
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->getBgMonitorMode()Z

    move-result v0

    move/16 v299, v0

    .line 3189
    .local v299, "mode":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3190
    move/from16 v0, v299

    if-eqz v0, :cond_bb

    const/4 v6, 0x1

    :goto_a7
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 3191
    const/4 v6, 0x1

    return v6

    .line 3190
    :cond_bb
    const/4 v6, 0x0

    goto :goto_a7

    .line 3199
    .end local v299    # "mode":Z
    :pswitch_121
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3200
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_bc

    const/4 v6, 0x1

    :goto_a8
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/app/ActivityManagerNative;->setKeyguardDone(Z)V

    .line 3201
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3202
    const/4 v6, 0x1

    return v6

    .line 3200
    :cond_bc
    const/4 v6, 0x0

    goto :goto_a8

    .line 3205
    :pswitch_122
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3206
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v32

    .line 3207
    .restart local v32    # "packageName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v135

    .line 3208
    .restart local v135    # "uid":I
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move/from16 v2, v135

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->isAppLocked(Ljava/lang/String;I)Z

    move-result v0

    move/16 v293, v0

    .line 3209
    .local v293, "locked":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3210
    move/from16 v0, v293

    if-eqz v0, :cond_bd

    const/4 v6, 0x1

    :goto_a9
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 3211
    const/4 v6, 0x1

    return v6

    .line 3210
    :cond_bd
    const/4 v6, 0x0

    goto :goto_a9

    .line 3215
    .end local v32    # "packageName":Ljava/lang/String;
    .end local v135    # "uid":I
    .end local v293    # "locked":Z
    :pswitch_123
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3216
    invoke-virtual/range {p0 .. p0}, Landroid/app/ActivityManagerNative;->isKeyguardDone()Z

    move-result v236

    .line 3217
    .local v236, "done":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3218
    if-eqz v236, :cond_be

    const/4 v6, 0x1

    :goto_aa
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 3219
    const/4 v6, 0x1

    return v6

    .line 3218
    :cond_be
    const/4 v6, 0x0

    goto :goto_aa

    .line 3226
    .end local v236    # "done":Z
    :pswitch_124
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3227
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v136

    .line 3228
    .restart local v136    # "mode":I
    move-object/from16 v0, p0

    move/from16 v1, v136

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getAllAppControlModes(I)Ljava/util/List;

    move-result-object v0

    move-object/16 v282, v0

    .line 3229
    .local v282, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$AppControlMode;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3230
    move-object/from16 v0, p3

    move-object/from16 v1, v282

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 3231
    const/4 v6, 0x1

    return v6

    .line 3235
    .end local v136    # "mode":I
    .end local v282    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$AppControlMode;>;"
    :pswitch_125
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3236
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    move-object/16 v321, v0

    .line 3237
    .restart local v321    # "pkg":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v136

    .line 3238
    .restart local v136    # "mode":I
    move-object/from16 v0, p0

    move-object/from16 v1, v321

    move/from16 v2, v136

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->getAppControlMode(Ljava/lang/String;I)I

    move-result v0

    move/16 v352, v0

    .line 3239
    .restart local v352    # "ret":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3240
    move-object/from16 v0, p3

    move/from16 v1, v352

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3241
    const/4 v6, 0x1

    return v6

    .line 3245
    .end local v136    # "mode":I
    .end local v321    # "pkg":Ljava/lang/String;
    .end local v352    # "ret":I
    :pswitch_126
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3246
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    move-object/16 v321, v0

    .line 3247
    .restart local v321    # "pkg":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v136

    .line 3248
    .restart local v136    # "mode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v384, v0

    .line 3249
    .local v384, "value":I
    move-object/from16 v0, p0

    move-object/from16 v1, v321

    move/from16 v2, v136

    move/from16 v3, v384

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerNative;->setAppControlMode(Ljava/lang/String;II)I

    move-result v0

    move/16 v352, v0

    .line 3250
    .restart local v352    # "ret":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3251
    move-object/from16 v0, p3

    move/from16 v1, v352

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3252
    const/4 v6, 0x1

    return v6

    .line 3256
    .end local v136    # "mode":I
    .end local v321    # "pkg":Ljava/lang/String;
    .end local v352    # "ret":I
    .end local v384    # "value":I
    :pswitch_127
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3257
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v136

    .line 3258
    .restart local v136    # "mode":I
    move-object/from16 v0, p0

    move/from16 v1, v136

    invoke-virtual {v0, v1}, Landroid/app/ActivityManagerNative;->getAppControlState(I)I

    move-result v0

    move/16 v352, v0

    .line 3259
    .restart local v352    # "ret":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3260
    move-object/from16 v0, p3

    move/from16 v1, v352

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3261
    const/4 v6, 0x1

    return v6

    .line 3265
    .end local v136    # "mode":I
    .end local v352    # "ret":I
    :pswitch_128
    const-string/jumbo v6, "android.app.IActivityManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 3266
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v136

    .line 3267
    .restart local v136    # "mode":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    move/16 v384, v0

    .line 3268
    .restart local v384    # "value":I
    move-object/from16 v0, p0

    move/from16 v1, v136

    move/from16 v2, v384

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerNative;->setAppControlState(II)I

    move-result v0

    move/16 v352, v0

    .line 3269
    .restart local v352    # "ret":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 3270
    move-object/from16 v0, p3

    move/from16 v1, v352

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3271
    const/4 v6, 0x1

    return v6

    .line 155
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_7e
        :pswitch_1
        :pswitch_70
        :pswitch_71
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_d
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_1a
        :pswitch_1b
        :pswitch_1d
        :pswitch_1e
        :pswitch_22
        :pswitch_23
        :pswitch_27
        :pswitch_2e
        :pswitch_0
        :pswitch_30
        :pswitch_40
        :pswitch_0
        :pswitch_41
        :pswitch_43
        :pswitch_44
        :pswitch_e
        :pswitch_49
        :pswitch_4a
        :pswitch_4b
        :pswitch_4e
        :pswitch_4f
        :pswitch_50
        :pswitch_1c
        :pswitch_0
        :pswitch_0
        :pswitch_73
        :pswitch_74
        :pswitch_53
        :pswitch_54
        :pswitch_55
        :pswitch_56
        :pswitch_4c
        :pswitch_59
        :pswitch_5a
        :pswitch_60
        :pswitch_61
        :pswitch_63
        :pswitch_65
        :pswitch_67
        :pswitch_68
        :pswitch_75
        :pswitch_6e
        :pswitch_81
        :pswitch_28
        :pswitch_52
        :pswitch_20
        :pswitch_5b
        :pswitch_5c
        :pswitch_5d
        :pswitch_78
        :pswitch_b
        :pswitch_79
        :pswitch_47
        :pswitch_57
        :pswitch_58
        :pswitch_51
        :pswitch_62
        :pswitch_4d
        :pswitch_2f
        :pswitch_6f
        :pswitch_2b
        :pswitch_66
        :pswitch_85
        :pswitch_7c
        :pswitch_2a
        :pswitch_29
        :pswitch_2c
        :pswitch_87
        :pswitch_8c
        :pswitch_88
        :pswitch_89
        :pswitch_8a
        :pswitch_8b
        :pswitch_8d
        :pswitch_8e
        :pswitch_8f
        :pswitch_5e
        :pswitch_5f
        :pswitch_90
        :pswitch_91
        :pswitch_92
        :pswitch_93
        :pswitch_94
        :pswitch_6
        :pswitch_95
        :pswitch_7f
        :pswitch_82
        :pswitch_96
        :pswitch_4
        :pswitch_13
        :pswitch_5
        :pswitch_2d
        :pswitch_98
        :pswitch_80
        :pswitch_99
        :pswitch_9e
        :pswitch_9f
        :pswitch_a0
        :pswitch_a1
        :pswitch_a2
        :pswitch_a4
        :pswitch_a5
        :pswitch_a6
        :pswitch_a7
        :pswitch_a8
        :pswitch_b2
        :pswitch_1f
        :pswitch_a9
        :pswitch_aa
        :pswitch_ab
        :pswitch_ac
        :pswitch_b9
        :pswitch_ba
        :pswitch_ad
        :pswitch_3e
        :pswitch_b4
        :pswitch_b5
        :pswitch_b6
        :pswitch_bb
        :pswitch_bf
        :pswitch_c0
        :pswitch_c1
        :pswitch_0
        :pswitch_83
        :pswitch_42
        :pswitch_48
        :pswitch_86
        :pswitch_7d
        :pswitch_b1
        :pswitch_c4
        :pswitch_c5
        :pswitch_72
        :pswitch_f
        :pswitch_c6
        :pswitch_45
        :pswitch_bc
        :pswitch_2
        :pswitch_b0
        :pswitch_c8
        :pswitch_c9
        :pswitch_b3
        :pswitch_ca
        :pswitch_cb
        :pswitch_0
        :pswitch_bd
        :pswitch_cc
        :pswitch_ce
        :pswitch_c7
        :pswitch_d2
        :pswitch_97
        :pswitch_d3
        :pswitch_d8
        :pswitch_31
        :pswitch_34
        :pswitch_39
        :pswitch_3c
        :pswitch_3a
        :pswitch_9b
        :pswitch_9c
        :pswitch_d5
        :pswitch_d4
        :pswitch_d6
        :pswitch_d7
        :pswitch_69
        :pswitch_6a
        :pswitch_6b
        :pswitch_46
        :pswitch_e7
        :pswitch_db
        :pswitch_d9
        :pswitch_f7
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
        :pswitch_be
        :pswitch_ae
        :pswitch_3b
        :pswitch_dc
        :pswitch_dd
        :pswitch_df
        :pswitch_e1
        :pswitch_e4
        :pswitch_7
        :pswitch_9d
        :pswitch_24
        :pswitch_de
        :pswitch_e0
        :pswitch_10
        :pswitch_9a
        :pswitch_ea
        :pswitch_eb
        :pswitch_ec
        :pswitch_ed
        :pswitch_c
        :pswitch_ee
        :pswitch_c2
        :pswitch_3
        :pswitch_25
        :pswitch_26
        :pswitch_11
        :pswitch_12
        :pswitch_ef
        :pswitch_e8
        :pswitch_cf
        :pswitch_e9
        :pswitch_64
        :pswitch_3f
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
        :pswitch_f0
        :pswitch_da
        :pswitch_3d
        :pswitch_e5
        :pswitch_cd
        :pswitch_e6
        :pswitch_e2
        :pswitch_f1
        :pswitch_f2
        :pswitch_f3
        :pswitch_f4
        :pswitch_7a
        :pswitch_7b
        :pswitch_f6
        :pswitch_e3
        :pswitch_f5
        :pswitch_c3
        :pswitch_b7
        :pswitch_b8
        :pswitch_d0
        :pswitch_d1
        :pswitch_f8
        :pswitch_111
        :pswitch_112
        :pswitch_113
        :pswitch_0
        :pswitch_114
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
        :pswitch_119
        :pswitch_115
        :pswitch_116
        :pswitch_117
        :pswitch_118
        :pswitch_11a
        :pswitch_11b
        :pswitch_11c
        :pswitch_0
        :pswitch_0
        :pswitch_11d
        :pswitch_11e
        :pswitch_11f
        :pswitch_120
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_f9
        :pswitch_fa
        :pswitch_38
        :pswitch_fb
        :pswitch_fc
        :pswitch_fd
        :pswitch_32
        :pswitch_fe
        :pswitch_ff
        :pswitch_33
        :pswitch_100
        :pswitch_af
        :pswitch_101
        :pswitch_102
        :pswitch_84
        :pswitch_103
        :pswitch_21
        :pswitch_a3
        :pswitch_37
        :pswitch_104
        :pswitch_6c
        :pswitch_6d
        :pswitch_106
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_107
        :pswitch_108
        :pswitch_76
        :pswitch_77
        :pswitch_35
        :pswitch_105
        :pswitch_36
        :pswitch_109
        :pswitch_10a
        :pswitch_10b
        :pswitch_10c
        :pswitch_10d
        :pswitch_10e
        :pswitch_10f
        :pswitch_110
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_19
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
        :pswitch_121
        :pswitch_122
        :pswitch_123
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
        :pswitch_124
        :pswitch_125
        :pswitch_126
        :pswitch_127
        :pswitch_128
    .end packed-switch
.end method
