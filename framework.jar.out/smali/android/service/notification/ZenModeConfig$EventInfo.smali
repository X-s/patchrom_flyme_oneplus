.class public Landroid/service/notification/ZenModeConfig$EventInfo;
.super Ljava/lang/Object;
.source "ZenModeConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/notification/ZenModeConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EventInfo"
.end annotation


# static fields
.field public static final REPLY_ANY_EXCEPT_NO:I = 0x0

.field public static final REPLY_YES:I = 0x2

.field public static final REPLY_YES_OR_MAYBE:I = 0x1


# instance fields
.field public calendar:Ljava/lang/String;

.field public reply:I

.field public userId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 842
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 847
    const/16 v0, -0x2710

    iput v0, p0, Landroid/service/notification/ZenModeConfig$EventInfo;->userId:I

    return-void
.end method

.method public static resolveUserId(I)I
    .locals 1
    .param p0, "userId"    # I

    .prologue
    .line 874
    const/16 v0, -0x2710

    if-ne p0, v0, :cond_0

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result p0

    .end local p0    # "userId":I
    :cond_0
    return p0
.end method


# virtual methods
.method public copy()Landroid/service/notification/ZenModeConfig$EventInfo;
    .locals 2

    .prologue
    .line 866
    new-instance v0, Landroid/service/notification/ZenModeConfig$EventInfo;

    invoke-direct {v0}, Landroid/service/notification/ZenModeConfig$EventInfo;-><init>()V

    .line 867
    .local v0, "rt":Landroid/service/notification/ZenModeConfig$EventInfo;
    iget v1, p0, Landroid/service/notification/ZenModeConfig$EventInfo;->userId:I

    iput v1, v0, Landroid/service/notification/ZenModeConfig$EventInfo;->userId:I

    .line 868
    iget-object v1, p0, Landroid/service/notification/ZenModeConfig$EventInfo;->calendar:Ljava/lang/String;

    iput-object v1, v0, Landroid/service/notification/ZenModeConfig$EventInfo;->calendar:Ljava/lang/String;

    .line 869
    iget v1, p0, Landroid/service/notification/ZenModeConfig$EventInfo;->reply:I

    iput v1, v0, Landroid/service/notification/ZenModeConfig$EventInfo;->reply:I

    .line 870
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 858
    instance-of v2, p1, Landroid/service/notification/ZenModeConfig$EventInfo;

    if-nez v2, :cond_1

    .line 860
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 859
    check-cast v0, Landroid/service/notification/ZenModeConfig$EventInfo;

    .line 860
    .local v0, "other":Landroid/service/notification/ZenModeConfig$EventInfo;
    iget v2, p0, Landroid/service/notification/ZenModeConfig$EventInfo;->userId:I

    iget v3, v0, Landroid/service/notification/ZenModeConfig$EventInfo;->userId:I

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Landroid/service/notification/ZenModeConfig$EventInfo;->calendar:Ljava/lang/String;

    iget-object v3, v0, Landroid/service/notification/ZenModeConfig$EventInfo;->calendar:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Landroid/service/notification/ZenModeConfig$EventInfo;->reply:I

    iget v3, v0, Landroid/service/notification/ZenModeConfig$EventInfo;->reply:I

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 853
    const/4 v0, 0x0

    return v0
.end method
