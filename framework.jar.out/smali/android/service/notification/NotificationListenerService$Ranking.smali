.class public Landroid/service/notification/NotificationListenerService$Ranking;
.super Ljava/lang/Object;
.source "NotificationListenerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/notification/NotificationListenerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Ranking"
.end annotation


# static fields
.field public static final IMPORTANCE_DEFAULT:I = 0x3

.field public static final IMPORTANCE_GOINGTO_UNSPECIFIED:I = 0x3e8

.field public static final IMPORTANCE_HIGH:I = 0x4

.field public static final IMPORTANCE_LOW:I = 0x2

.field public static final IMPORTANCE_MAX:I = 0x5

.field public static final IMPORTANCE_MIN:I = 0x1

.field public static final IMPORTANCE_NONE:I = 0x0

.field public static final IMPORTANCE_UNSPECIFIED:I = -0x3e8

.field public static final OPLEVEL_BLOCK:I = 0x2

.field public static final OPLEVEL_DENOISE:I = 0x1

.field public static final OPLEVEL_RESET:I = 0x0

.field public static final VISIBILITY_NO_OVERRIDE:I = -0x3e8


# instance fields
.field private mImportance:I

.field private mImportanceExplanation:Ljava/lang/CharSequence;

.field private mIsAmbient:Z

.field private mKey:Ljava/lang/String;

.field private mMatchesInterruptionFilter:Z

.field private mOverrideGroupKey:Ljava/lang/String;

.field private mRank:I

.field private mSuppressedVisualEffects:I

.field private mVisibilityOverride:I


# direct methods
.method static synthetic -wrap0(Landroid/service/notification/NotificationListenerService$Ranking;Ljava/lang/String;IZIIILjava/lang/CharSequence;Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "rank"    # I
    .param p3, "matchesInterruptionFilter"    # Z
    .param p4, "visibilityOverride"    # I
    .param p5, "suppressedVisualEffects"    # I
    .param p6, "importance"    # I
    .param p7, "explanation"    # Ljava/lang/CharSequence;
    .param p8, "overrideGroupKey"    # Ljava/lang/String;

    .prologue
    invoke-direct/range {p0 .. p8}, Landroid/service/notification/NotificationListenerService$Ranking;->populate(Ljava/lang/String;IZIIILjava/lang/CharSequence;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1110
    const/4 v0, -0x1

    iput v0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mRank:I

    .line 1120
    return-void
.end method

.method public static importanceToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "importance"    # I

    .prologue
    .line 1223
    sparse-switch p0, :sswitch_data_0

    .line 1239
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "UNKNOWN("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1225
    :sswitch_0
    const-string/jumbo v0, "UNSPECIFIED"

    return-object v0

    .line 1227
    :sswitch_1
    const-string/jumbo v0, "NONE"

    return-object v0

    .line 1229
    :sswitch_2
    const-string/jumbo v0, "MIN"

    return-object v0

    .line 1231
    :sswitch_3
    const-string/jumbo v0, "LOW"

    return-object v0

    .line 1233
    :sswitch_4
    const-string/jumbo v0, "DEFAULT"

    return-object v0

    .line 1235
    :sswitch_5
    const-string/jumbo v0, "HIGH"

    return-object v0

    .line 1237
    :sswitch_6
    const-string/jumbo v0, "MAX"

    return-object v0

    .line 1223
    nop

    :sswitch_data_0
    .sparse-switch
        -0x3e8 -> :sswitch_0
        0x0 -> :sswitch_1
        0x1 -> :sswitch_2
        0x2 -> :sswitch_3
        0x3 -> :sswitch_4
        0x4 -> :sswitch_5
        0x5 -> :sswitch_6
    .end sparse-switch
.end method

.method public static opLevelToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "opLevel"    # I

    .prologue
    .line 1247
    packed-switch p0, :pswitch_data_0

    .line 1255
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "UNKNOWN("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1249
    :pswitch_0
    const-string/jumbo v0, "RESET"

    return-object v0

    .line 1251
    :pswitch_1
    const-string/jumbo v0, "DENOISE"

    return-object v0

    .line 1253
    :pswitch_2
    const-string/jumbo v0, "BLOCK"

    return-object v0

    .line 1247
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private populate(Ljava/lang/String;IZIIILjava/lang/CharSequence;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "rank"    # I
    .param p3, "matchesInterruptionFilter"    # Z
    .param p4, "visibilityOverride"    # I
    .param p5, "suppressedVisualEffects"    # I
    .param p6, "importance"    # I
    .param p7, "explanation"    # Ljava/lang/CharSequence;
    .param p8, "overrideGroupKey"    # Ljava/lang/String;

    .prologue
    .line 1208
    iput-object p1, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mKey:Ljava/lang/String;

    .line 1209
    iput p2, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mRank:I

    .line 1210
    const/4 v0, 0x2

    if-ge p6, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mIsAmbient:Z

    .line 1211
    iput-boolean p3, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mMatchesInterruptionFilter:Z

    .line 1212
    iput p4, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mVisibilityOverride:I

    .line 1213
    iput p5, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mSuppressedVisualEffects:I

    .line 1214
    iput p6, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mImportance:I

    .line 1215
    iput-object p7, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mImportanceExplanation:Ljava/lang/CharSequence;

    .line 1216
    iput-object p8, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mOverrideGroupKey:Ljava/lang/String;

    .line 1207
    return-void

    .line 1210
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getImportance()I
    .locals 1

    .prologue
    .line 1184
    iget v0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mImportance:I

    return v0
.end method

.method public getImportanceExplanation()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1194
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mImportanceExplanation:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1126
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method public getOverrideGroupKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1202
    iget-object v0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mOverrideGroupKey:Ljava/lang/String;

    return-object v0
.end method

.method public getRank()I
    .locals 1

    .prologue
    .line 1136
    iget v0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mRank:I

    return v0
.end method

.method public getSuppressedVisualEffects()I
    .locals 1

    .prologue
    .line 1163
    iget v0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mSuppressedVisualEffects:I

    return v0
.end method

.method public getVisibilityOverride()I
    .locals 1

    .prologue
    .line 1155
    iget v0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mVisibilityOverride:I

    return v0
.end method

.method public isAmbient()Z
    .locals 1

    .prologue
    .line 1144
    iget-boolean v0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mIsAmbient:Z

    return v0
.end method

.method public matchesInterruptionFilter()Z
    .locals 1

    .prologue
    .line 1174
    iget-boolean v0, p0, Landroid/service/notification/NotificationListenerService$Ranking;->mMatchesInterruptionFilter:Z

    return v0
.end method
