.class final enum Lcom/android/systemui_ex/volume/VolumePanel$StreamResources;
.super Ljava/lang/Enum;
.source "VolumePanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui_ex/volume/VolumePanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "StreamResources"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/systemui_ex/volume/VolumePanel$StreamResources;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/systemui_ex/volume/VolumePanel$StreamResources;

.field public static final enum AlarmStream:Lcom/android/systemui_ex/volume/VolumePanel$StreamResources;

.field public static final enum BluetoothSCOStream:Lcom/android/systemui_ex/volume/VolumePanel$StreamResources;

.field public static final enum MasterStream:Lcom/android/systemui_ex/volume/VolumePanel$StreamResources;

.field public static final enum MediaStream:Lcom/android/systemui_ex/volume/VolumePanel$StreamResources;

.field public static final enum NotificationStream:Lcom/android/systemui_ex/volume/VolumePanel$StreamResources;

.field public static final enum RemoteStream:Lcom/android/systemui_ex/volume/VolumePanel$StreamResources;

.field public static final enum RingerStream:Lcom/android/systemui_ex/volume/VolumePanel$StreamResources;

.field public static final enum VoiceStream:Lcom/android/systemui_ex/volume/VolumePanel$StreamResources;


# instance fields
.field descRes:I

.field iconMuteRes:I

.field iconRes:I

.field show:Z

.field streamType:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    .line 212
    new-instance v0, Lcom/android/systemui_ex/volume/VolumePanel$StreamResources;

    const-string v1, "BluetoothSCOStream"

    const/4 v2, 0x0

    const/4 v3, 0x6

    const v4, 0x10404f4

    const v5, 0x7f02008f

    const v6, 0x7f020090

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui_ex/volume/VolumePanel$StreamResources;-><init>(Ljava/lang/String;IIIIIZ)V

    sput-object v0, Lcom/android/systemui_ex/volume/VolumePanel$StreamResources;->BluetoothSCOStream:Lcom/android/systemui_ex/volume/VolumePanel$StreamResources;

    .line 217
    new-instance v0, Lcom/android/systemui_ex/volume/VolumePanel$StreamResources;

    const-string v1, "RingerStream"

    const/4 v2, 0x1

    const/4 v3, 0x2

    const v4, 0x10404f5

    const v5, 0x7f020124

    const v6, 0x7f020125

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui_ex/volume/VolumePanel$StreamResources;-><init>(Ljava/lang/String;IIIIIZ)V

    sput-object v0, Lcom/android/systemui_ex/volume/VolumePanel$StreamResources;->RingerStream:Lcom/android/systemui_ex/volume/VolumePanel$StreamResources;

    .line 222
    new-instance v0, Lcom/android/systemui_ex/volume/VolumePanel$StreamResources;

    const-string v1, "VoiceStream"

    const/4 v2, 0x2

    const/4 v3, 0x0

    const v4, 0x10404f6

    const v5, 0x7f020091

    const v6, 0x7f020091

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui_ex/volume/VolumePanel$StreamResources;-><init>(Ljava/lang/String;IIIIIZ)V

    sput-object v0, Lcom/android/systemui_ex/volume/VolumePanel$StreamResources;->VoiceStream:Lcom/android/systemui_ex/volume/VolumePanel$StreamResources;

    .line 227
    new-instance v0, Lcom/android/systemui_ex/volume/VolumePanel$StreamResources;

    const-string v1, "AlarmStream"

    const/4 v2, 0x3

    const/4 v3, 0x4

    const v4, 0x10404f1

    const v5, 0x7f02008d

    const v6, 0x7f02008e

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui_ex/volume/VolumePanel$StreamResources;-><init>(Ljava/lang/String;IIIIIZ)V

    sput-object v0, Lcom/android/systemui_ex/volume/VolumePanel$StreamResources;->AlarmStream:Lcom/android/systemui_ex/volume/VolumePanel$StreamResources;

    .line 232
    new-instance v0, Lcom/android/systemui_ex/volume/VolumePanel$StreamResources;

    const-string v1, "MediaStream"

    const/4 v2, 0x4

    const/4 v3, 0x3

    const v4, 0x10404f7

    const v5, 0x7f0200c3

    const v6, 0x7f020125

    const/4 v7, 0x1

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui_ex/volume/VolumePanel$StreamResources;-><init>(Ljava/lang/String;IIIIIZ)V

    sput-object v0, Lcom/android/systemui_ex/volume/VolumePanel$StreamResources;->MediaStream:Lcom/android/systemui_ex/volume/VolumePanel$StreamResources;

    .line 237
    new-instance v0, Lcom/android/systemui_ex/volume/VolumePanel$StreamResources;

    const-string v1, "NotificationStream"

    const/4 v2, 0x5

    const/4 v3, 0x5

    const v4, 0x10404f8

    const v5, 0x7f020124

    const v6, 0x7f020125

    const/4 v7, 0x1

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui_ex/volume/VolumePanel$StreamResources;-><init>(Ljava/lang/String;IIIIIZ)V

    sput-object v0, Lcom/android/systemui_ex/volume/VolumePanel$StreamResources;->NotificationStream:Lcom/android/systemui_ex/volume/VolumePanel$StreamResources;

    .line 243
    new-instance v0, Lcom/android/systemui_ex/volume/VolumePanel$StreamResources;

    const-string v1, "MasterStream"

    const/4 v2, 0x6

    const/16 v3, -0x64

    const v4, 0x10404f7

    const v5, 0x7f0200c3

    const v6, 0x7f020125

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui_ex/volume/VolumePanel$StreamResources;-><init>(Ljava/lang/String;IIIIIZ)V

    sput-object v0, Lcom/android/systemui_ex/volume/VolumePanel$StreamResources;->MasterStream:Lcom/android/systemui_ex/volume/VolumePanel$StreamResources;

    .line 248
    new-instance v0, Lcom/android/systemui_ex/volume/VolumePanel$StreamResources;

    const-string v1, "RemoteStream"

    const/4 v2, 0x7

    const/16 v3, -0xc8

    const v4, 0x10404f7

    const v5, 0x7f020092

    const v6, 0x7f020092

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui_ex/volume/VolumePanel$StreamResources;-><init>(Ljava/lang/String;IIIIIZ)V

    sput-object v0, Lcom/android/systemui_ex/volume/VolumePanel$StreamResources;->RemoteStream:Lcom/android/systemui_ex/volume/VolumePanel$StreamResources;

    .line 211
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/android/systemui_ex/volume/VolumePanel$StreamResources;

    const/4 v1, 0x0

    sget-object v2, Lcom/android/systemui_ex/volume/VolumePanel$StreamResources;->BluetoothSCOStream:Lcom/android/systemui_ex/volume/VolumePanel$StreamResources;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/android/systemui_ex/volume/VolumePanel$StreamResources;->RingerStream:Lcom/android/systemui_ex/volume/VolumePanel$StreamResources;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/android/systemui_ex/volume/VolumePanel$StreamResources;->VoiceStream:Lcom/android/systemui_ex/volume/VolumePanel$StreamResources;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/android/systemui_ex/volume/VolumePanel$StreamResources;->AlarmStream:Lcom/android/systemui_ex/volume/VolumePanel$StreamResources;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/android/systemui_ex/volume/VolumePanel$StreamResources;->MediaStream:Lcom/android/systemui_ex/volume/VolumePanel$StreamResources;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/android/systemui_ex/volume/VolumePanel$StreamResources;->NotificationStream:Lcom/android/systemui_ex/volume/VolumePanel$StreamResources;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/systemui_ex/volume/VolumePanel$StreamResources;->MasterStream:Lcom/android/systemui_ex/volume/VolumePanel$StreamResources;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/android/systemui_ex/volume/VolumePanel$StreamResources;->RemoteStream:Lcom/android/systemui_ex/volume/VolumePanel$StreamResources;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/systemui_ex/volume/VolumePanel$StreamResources;->$VALUES:[Lcom/android/systemui_ex/volume/VolumePanel$StreamResources;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIIIIZ)V
    .locals 0
    .param p3, "streamType"    # I
    .param p4, "descRes"    # I
    .param p5, "iconRes"    # I
    .param p6, "iconMuteRes"    # I
    .param p7, "show"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIIZ)V"
        }
    .end annotation

    .prologue
    .line 261
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 262
    iput p3, p0, Lcom/android/systemui_ex/volume/VolumePanel$StreamResources;->streamType:I

    .line 263
    iput p4, p0, Lcom/android/systemui_ex/volume/VolumePanel$StreamResources;->descRes:I

    .line 264
    iput p5, p0, Lcom/android/systemui_ex/volume/VolumePanel$StreamResources;->iconRes:I

    .line 265
    iput p6, p0, Lcom/android/systemui_ex/volume/VolumePanel$StreamResources;->iconMuteRes:I

    .line 266
    iput-boolean p7, p0, Lcom/android/systemui_ex/volume/VolumePanel$StreamResources;->show:Z

    .line 267
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui_ex/volume/VolumePanel$StreamResources;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 211
    const-class v0, Lcom/android/systemui_ex/volume/VolumePanel$StreamResources;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/systemui_ex/volume/VolumePanel$StreamResources;

    return-object v0
.end method

.method public static values()[Lcom/android/systemui_ex/volume/VolumePanel$StreamResources;
    .locals 1

    .prologue
    .line 211
    sget-object v0, Lcom/android/systemui_ex/volume/VolumePanel$StreamResources;->$VALUES:[Lcom/android/systemui_ex/volume/VolumePanel$StreamResources;

    invoke-virtual {v0}, [Lcom/android/systemui_ex/volume/VolumePanel$StreamResources;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui_ex/volume/VolumePanel$StreamResources;

    return-object v0
.end method
