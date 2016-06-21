.class Lcom/android/systemui_ex/statusbar/NotificationData$1;
.super Ljava/lang/Object;
.source "NotificationData.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui_ex/statusbar/NotificationData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/systemui_ex/statusbar/NotificationData$Entry;",
        ">;"
    }
.end annotation


# instance fields
.field private final mRankingA:Landroid/service/notification/NotificationListenerService$Ranking;

.field private final mRankingB:Landroid/service/notification/NotificationListenerService$Ranking;

.field final synthetic this$0:Lcom/android/systemui_ex/statusbar/NotificationData;


# direct methods
.method constructor <init>(Lcom/android/systemui_ex/statusbar/NotificationData;)V
    .locals 1

    .prologue
    .line 144
    iput-object p1, p0, Lcom/android/systemui_ex/statusbar/NotificationData$1;->this$0:Lcom/android/systemui_ex/statusbar/NotificationData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    new-instance v0, Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-direct {v0}, Landroid/service/notification/NotificationListenerService$Ranking;-><init>()V

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/NotificationData$1;->mRankingA:Landroid/service/notification/NotificationListenerService$Ranking;

    .line 146
    new-instance v0, Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-direct {v0}, Landroid/service/notification/NotificationListenerService$Ranking;-><init>()V

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/NotificationData$1;->mRankingB:Landroid/service/notification/NotificationListenerService$Ranking;

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/systemui_ex/statusbar/NotificationData$Entry;Lcom/android/systemui_ex/statusbar/NotificationData$Entry;)I
    .locals 12
    .param p1, "a"    # Lcom/android/systemui_ex/statusbar/NotificationData$Entry;
    .param p2, "b"    # Lcom/android/systemui_ex/statusbar/NotificationData$Entry;

    .prologue
    const/4 v11, 0x2

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v7, 0x1

    .line 151
    invoke-virtual {p1}, Lcom/android/systemui_ex/statusbar/NotificationData$Entry;->getPriority()I

    move-result v0

    .line 152
    .local v0, "aPriority":I
    invoke-virtual {p2}, Lcom/android/systemui_ex/statusbar/NotificationData$Entry;->getPriority()I

    move-result v2

    .line 154
    .local v2, "bPriority":I
    iget-object v10, p0, Lcom/android/systemui_ex/statusbar/NotificationData$1;->this$0:Lcom/android/systemui_ex/statusbar/NotificationData;

    # invokes: Lcom/android/systemui_ex/statusbar/NotificationData;->isPrioritizedNotification(I)Z
    invoke-static {v10, v0}, Lcom/android/systemui_ex/statusbar/NotificationData;->access$000(Lcom/android/systemui_ex/statusbar/NotificationData;I)Z

    move-result v10

    if-nez v10, :cond_0

    iget-object v10, p0, Lcom/android/systemui_ex/statusbar/NotificationData$1;->this$0:Lcom/android/systemui_ex/statusbar/NotificationData;

    # invokes: Lcom/android/systemui_ex/statusbar/NotificationData;->isPrioritizedNotification(I)Z
    invoke-static {v10, v2}, Lcom/android/systemui_ex/statusbar/NotificationData;->access$000(Lcom/android/systemui_ex/statusbar/NotificationData;I)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 155
    :cond_0
    if-eq v0, v2, :cond_2

    .line 157
    sub-int v7, v2, v0

    .line 195
    :cond_1
    :goto_0
    return v7

    .line 170
    :cond_2
    iget-object v5, p1, Lcom/android/systemui_ex/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 171
    .local v5, "na":Landroid/service/notification/StatusBarNotification;
    iget-object v6, p2, Lcom/android/systemui_ex/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 174
    .local v6, "nb":Landroid/service/notification/StatusBarNotification;
    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v10

    iget v10, v10, Landroid/app/Notification;->priority:I

    if-lt v10, v11, :cond_3

    # invokes: Lcom/android/systemui_ex/statusbar/NotificationData;->isSystemNotification(Landroid/service/notification/StatusBarNotification;)Z
    invoke-static {v5}, Lcom/android/systemui_ex/statusbar/NotificationData;->access$100(Landroid/service/notification/StatusBarNotification;)Z

    move-result v10

    if-eqz v10, :cond_3

    move v1, v7

    .line 176
    .local v1, "aSystemMax":Z
    :goto_1
    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v10

    iget v10, v10, Landroid/app/Notification;->priority:I

    if-lt v10, v11, :cond_4

    # invokes: Lcom/android/systemui_ex/statusbar/NotificationData;->isSystemNotification(Landroid/service/notification/StatusBarNotification;)Z
    invoke-static {v6}, Lcom/android/systemui_ex/statusbar/NotificationData;->access$100(Landroid/service/notification/StatusBarNotification;)Z

    move-result v10

    if-eqz v10, :cond_4

    move v3, v7

    .line 178
    .local v3, "bSystemMax":Z
    :goto_2
    if-eq v1, v3, :cond_5

    .line 179
    if-eqz v1, :cond_1

    move v7, v9

    goto :goto_0

    .end local v1    # "aSystemMax":Z
    .end local v3    # "bSystemMax":Z
    :cond_3
    move v1, v8

    .line 174
    goto :goto_1

    .restart local v1    # "aSystemMax":Z
    :cond_4
    move v3, v8

    .line 176
    goto :goto_2

    .line 183
    .restart local v3    # "bSystemMax":Z
    :cond_5
    iget-object v8, p0, Lcom/android/systemui_ex/statusbar/NotificationData$1;->this$0:Lcom/android/systemui_ex/statusbar/NotificationData;

    # getter for: Lcom/android/systemui_ex/statusbar/NotificationData;->mRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;
    invoke-static {v8}, Lcom/android/systemui_ex/statusbar/NotificationData;->access$200(Lcom/android/systemui_ex/statusbar/NotificationData;)Landroid/service/notification/NotificationListenerService$RankingMap;

    move-result-object v8

    if-eqz v8, :cond_6

    .line 184
    iget-object v7, p0, Lcom/android/systemui_ex/statusbar/NotificationData$1;->this$0:Lcom/android/systemui_ex/statusbar/NotificationData;

    # getter for: Lcom/android/systemui_ex/statusbar/NotificationData;->mRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;
    invoke-static {v7}, Lcom/android/systemui_ex/statusbar/NotificationData;->access$200(Lcom/android/systemui_ex/statusbar/NotificationData;)Landroid/service/notification/NotificationListenerService$RankingMap;

    move-result-object v7

    iget-object v8, p1, Lcom/android/systemui_ex/statusbar/NotificationData$Entry;->key:Ljava/lang/String;

    iget-object v9, p0, Lcom/android/systemui_ex/statusbar/NotificationData$1;->mRankingA:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v7, v8, v9}, Landroid/service/notification/NotificationListenerService$RankingMap;->getRanking(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$Ranking;)Z

    .line 185
    iget-object v7, p0, Lcom/android/systemui_ex/statusbar/NotificationData$1;->this$0:Lcom/android/systemui_ex/statusbar/NotificationData;

    # getter for: Lcom/android/systemui_ex/statusbar/NotificationData;->mRankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;
    invoke-static {v7}, Lcom/android/systemui_ex/statusbar/NotificationData;->access$200(Lcom/android/systemui_ex/statusbar/NotificationData;)Landroid/service/notification/NotificationListenerService$RankingMap;

    move-result-object v7

    iget-object v8, p2, Lcom/android/systemui_ex/statusbar/NotificationData$Entry;->key:Ljava/lang/String;

    iget-object v9, p0, Lcom/android/systemui_ex/statusbar/NotificationData$1;->mRankingB:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v7, v8, v9}, Landroid/service/notification/NotificationListenerService$RankingMap;->getRanking(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$Ranking;)Z

    .line 186
    iget-object v7, p0, Lcom/android/systemui_ex/statusbar/NotificationData$1;->mRankingA:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v7}, Landroid/service/notification/NotificationListenerService$Ranking;->getRank()I

    move-result v7

    iget-object v8, p0, Lcom/android/systemui_ex/statusbar/NotificationData$1;->mRankingB:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v8}, Landroid/service/notification/NotificationListenerService$Ranking;->getRank()I

    move-result v8

    sub-int/2addr v7, v8

    goto :goto_0

    .line 189
    :cond_6
    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getScore()I

    move-result v8

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getScore()I

    move-result v10

    sub-int v4, v8, v10

    .line 190
    .local v4, "d":I
    # getter for: Lcom/android/systemui_ex/statusbar/NotificationData$Entry;->interruption:Z
    invoke-static {p1}, Lcom/android/systemui_ex/statusbar/NotificationData$Entry;->access$300(Lcom/android/systemui_ex/statusbar/NotificationData$Entry;)Z

    move-result v8

    # getter for: Lcom/android/systemui_ex/statusbar/NotificationData$Entry;->interruption:Z
    invoke-static {p2}, Lcom/android/systemui_ex/statusbar/NotificationData$Entry;->access$300(Lcom/android/systemui_ex/statusbar/NotificationData$Entry;)Z

    move-result v10

    if-eq v8, v10, :cond_8

    .line 191
    # getter for: Lcom/android/systemui_ex/statusbar/NotificationData$Entry;->interruption:Z
    invoke-static {p1}, Lcom/android/systemui_ex/statusbar/NotificationData$Entry;->access$300(Lcom/android/systemui_ex/statusbar/NotificationData$Entry;)Z

    move-result v8

    if-eqz v8, :cond_7

    :goto_3
    move v7, v9

    goto :goto_0

    :cond_7
    move v9, v7

    goto :goto_3

    .line 192
    :cond_8
    if-eqz v4, :cond_9

    move v7, v4

    .line 193
    goto :goto_0

    .line 195
    :cond_9
    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v7

    iget-wide v8, v7, Landroid/app/Notification;->when:J

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v7

    iget-wide v10, v7, Landroid/app/Notification;->when:J

    sub-long/2addr v8, v10

    long-to-int v7, v8

    goto/16 :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 144
    check-cast p1, Lcom/android/systemui_ex/statusbar/NotificationData$Entry;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/android/systemui_ex/statusbar/NotificationData$Entry;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui_ex/statusbar/NotificationData$1;->compare(Lcom/android/systemui_ex/statusbar/NotificationData$Entry;Lcom/android/systemui_ex/statusbar/NotificationData$Entry;)I

    move-result v0

    return v0
.end method
