.class public interface abstract Lcom/oneplus/tuner/providers/Tables$DownloadedSoundEffect;
.super Ljava/lang/Object;
.source "Tables.java"

# interfaces
.implements Landroid/provider/SyncStateContract$Columns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/tuner/providers/Tables;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DownloadedSoundEffect"
.end annotation


# static fields
.field public static final BASS_BOOST:Ljava/lang/String; = "_bass_boost"

.field public static final CHANNEL_EQUALIZATION:Ljava/lang/String; = "_channel_equalization"

.field public static final CLEAR_VOCAL:Ljava/lang/String; = "_clear_vocal"

.field public static final COMMEND:Ljava/lang/String; = "_commend"

.field public static final COMMENT:Ljava/lang/String; = "_comment"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final EFFECT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/downloadedSoundEffect"

.field public static final EFFECT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/downloadedSoundEffect"

.field public static final EQ:Ljava/lang/String; = "_eq"

.field public static final LOCAL:Ljava/lang/String; = "_local"

.field public static final MODEL:Ljava/lang/String; = "_model"

.field public static final PROJECTION:[Ljava/lang/String;

.field public static final SHARE_ID:Ljava/lang/String; = "_share_id"

.field public static final SORT_ORDER:Ljava/lang/String; = "_id ASC"

.field public static final SPEAKER_EXPANSION:Ljava/lang/String; = "_speaker_expansion"

.field public static final STYLE:Ljava/lang/String; = "_style"

.field public static final TABLE_NAME:Ljava/lang/String; = "downloadedSoundEffects"

.field public static final TIME:Ljava/lang/String; = "_time"

.field public static final TRANSPARENT_TREBLE:Ljava/lang/String; = "_transparent_treble"

.field public static final USERNAME:Ljava/lang/String; = "_user_name"

.field public static final USING:Ljava/lang/String; = "_using"

.field public static final VOLUME_BALANCE:Ljava/lang/String; = "_volume_balance"

.field public static final VOLUME_STRENGTHEN:Ljava/lang/String; = "_volume_strengthen"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 49
    const-string v0, "content://com.oneplus.tuner.providers.soundeffect/downloadedSoundEffects"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/oneplus/tuner/providers/Tables$DownloadedSoundEffect;->CONTENT_URI:Landroid/net/Uri;

    .line 72
    const/16 v0, 0x12

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "_style"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "_model"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "_user_name"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "_comment"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "_commend"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "_time"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "_using"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "_local"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "_share_id"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "_eq"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "_volume_strengthen"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "_speaker_expansion"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "_volume_balance"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "_bass_boost"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "_transparent_treble"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "_clear_vocal"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "_channel_equalization"

    aput-object v2, v0, v1

    sput-object v0, Lcom/oneplus/tuner/providers/Tables$DownloadedSoundEffect;->PROJECTION:[Ljava/lang/String;

    return-void
.end method
