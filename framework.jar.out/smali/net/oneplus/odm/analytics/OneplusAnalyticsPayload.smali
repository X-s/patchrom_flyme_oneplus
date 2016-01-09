.class public Lnet/oneplus/odm/analytics/OneplusAnalyticsPayload;
.super Ljava/lang/Object;
.source "OneplusAnalyticsPayload.java"


# instance fields
.field private mCategory:Ljava/lang/String;

.field private mId:I

.field private mPayload:Ljava/lang/String;

.field private mTimestamp:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "payload"    # Ljava/lang/String;
    .param p3, "timestamp"    # Ljava/lang/String;
    .param p4, "category"    # Ljava/lang/String;

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput p1, p0, Lnet/oneplus/odm/analytics/OneplusAnalyticsPayload;->mId:I

    .line 15
    iput-object p2, p0, Lnet/oneplus/odm/analytics/OneplusAnalyticsPayload;->mPayload:Ljava/lang/String;

    .line 16
    iput-object p3, p0, Lnet/oneplus/odm/analytics/OneplusAnalyticsPayload;->mTimestamp:Ljava/lang/String;

    .line 17
    iput-object p4, p0, Lnet/oneplus/odm/analytics/OneplusAnalyticsPayload;->mCategory:Ljava/lang/String;

    .line 18
    return-void
.end method


# virtual methods
.method public getCategory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lnet/oneplus/odm/analytics/OneplusAnalyticsPayload;->mCategory:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 21
    iget v0, p0, Lnet/oneplus/odm/analytics/OneplusAnalyticsPayload;->mId:I

    return v0
.end method

.method public getPayload()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lnet/oneplus/odm/analytics/OneplusAnalyticsPayload;->mPayload:Ljava/lang/String;

    return-object v0
.end method

.method public getTimestamp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lnet/oneplus/odm/analytics/OneplusAnalyticsPayload;->mTimestamp:Ljava/lang/String;

    return-object v0
.end method
