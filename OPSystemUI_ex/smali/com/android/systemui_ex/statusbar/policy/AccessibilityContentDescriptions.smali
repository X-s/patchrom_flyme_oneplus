.class public Lcom/android/systemui_ex/statusbar/policy/AccessibilityContentDescriptions;
.super Ljava/lang/Object;
.source "AccessibilityContentDescriptions.java"


# static fields
.field static final DATA_CONNECTION_STRENGTH:[I

.field static final PHONE_SIGNAL_STRENGTH:[I

.field static final WIFI_CONNECTION_STRENGTH:[I

.field static final WIMAX_CONNECTION_STRENGTH:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x5

    .line 13
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/systemui_ex/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    .line 21
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/systemui_ex/statusbar/policy/AccessibilityContentDescriptions;->DATA_CONNECTION_STRENGTH:[I

    .line 29
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/systemui_ex/statusbar/policy/AccessibilityContentDescriptions;->WIFI_CONNECTION_STRENGTH:[I

    .line 37
    new-array v0, v1, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/android/systemui_ex/statusbar/policy/AccessibilityContentDescriptions;->WIMAX_CONNECTION_STRENGTH:[I

    return-void

    .line 13
    :array_0
    .array-data 4
        0x7f0c0073
        0x7f0c0074
        0x7f0c0075
        0x7f0c0076
        0x7f0c0077
    .end array-data

    .line 21
    :array_1
    .array-data 4
        0x7f0c0078
        0x7f0c0079
        0x7f0c007a
        0x7f0c007b
        0x7f0c007c
    .end array-data

    .line 29
    :array_2
    .array-data 4
        0x7f0c007e
        0x7f0c007f
        0x7f0c0080
        0x7f0c0081
        0x7f0c0082
    .end array-data

    .line 37
    :array_3
    .array-data 4
        0x7f0c0085
        0x7f0c0086
        0x7f0c0087
        0x7f0c0088
        0x7f0c0089
    .end array-data
.end method
