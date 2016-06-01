.class public Lcom/oppo/tribune/square/tribune/PostConstant$ProductRegister;
.super Ljava/lang/Object;
.source "PostConstant.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/tribune/square/tribune/PostConstant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProductRegister"
.end annotation


# static fields
.field public static final PRODUCT_REGISTER_IMEI:Ljava/lang/String; = "/imei/"

.field public static final PRODUCT_REGISTER_MOBILE:Ljava/lang/String; = "/mobile/"

.field public static final PRODUCT_REGISTER_SIN:Ljava/lang/String; = "/sin/"

.field public static final PRODUCT_REGISTER_SUCCESS:Ljava/lang/String; = "9999"

.field public static final PRODUCT_REGISTER_URL:Ljava/lang/String; = "http://www.oppo.com/index.php?q=interface/product/index"

.field public static final PRODUCT_REGISTER_USER:Ljava/lang/String; = "/user/"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 485
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
