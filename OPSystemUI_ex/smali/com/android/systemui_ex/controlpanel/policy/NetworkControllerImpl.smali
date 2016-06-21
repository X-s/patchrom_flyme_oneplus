.class public Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;
.super Landroid/content/BroadcastReceiver;
.source "NetworkControllerImpl.java"

# interfaces
.implements Lcom/android/systemui_ex/DemoMode;
.implements Lcom/android/systemui_ex/controlpanel/policy/NetworkController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl$4;,
        Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl$SimOperatorCallback;,
        Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl$WifiHandler;,
        Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl$SignalCluster;
    }
.end annotation


# static fields
.field protected static mAppopsStrictEnabled:Z


# instance fields
.field private final mAccessPoints:Lcom/android/systemui_ex/controlpanel/policy/AccessPointControllerImpl;

.field mAirplaneIconId:I

.field protected mAirplaneMode:Z

.field mAlwaysShowCdmaRssi:Z

.field protected mBluetoothTetherIconId:I

.field protected mBluetoothTethered:Z

.field private mCarrierText:Ljava/lang/String;

.field mCombinedLabelViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field mCombinedSignalIconViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field protected mConnected:Z

.field protected mConnectedNetworkType:I

.field protected mConnectedNetworkTypeName:Ljava/lang/String;

.field mContentDescriptionCombinedSignal:Ljava/lang/String;

.field mContentDescriptionDataType:Ljava/lang/String;

.field mContentDescriptionPhoneSignal:Ljava/lang/String;

.field mContentDescriptionWifi:Ljava/lang/String;

.field mContentDescriptionWimax:Ljava/lang/String;

.field protected mContext:Landroid/content/Context;

.field mDataActivity:I

.field mDataAndWifiStacked:Z

.field mDataConnected:Z

.field mDataDirectionIconId:I

.field mDataDirectionIconViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field mDataDirectionOverlayIconViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field mDataIconList:[I

.field mDataNetType:I

.field protected mDataServiceState:I

.field mDataSignalIconId:I

.field mDataState:I

.field mDataTypeIconId:I

.field mDataTypeIconViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private mDemoDataTypeIconId:I

.field private mDemoInetCondition:I

.field private mDemoMobileActivityId:I

.field private mDemoMobileLevel:I

.field private mDemoMode:Z

.field private mDemoQSDataTypeIconId:I

.field private mDemoWifiActivityId:I

.field private mDemoWifiLevel:I

.field mEmergencyViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;",
            ">;"
        }
    .end annotation
.end field

.field protected mHasMobileDataFeature:Z

.field mHspaDataDistinguishable:Z

.field protected mInetCondition:I

.field protected mIsWimaxEnabled:Z

.field protected mLastAirplaneMode:Z

.field mLastCombinedLabel:Ljava/lang/String;

.field mLastCombinedSignalIconId:I

.field protected mLastConnectedNetworkType:I

.field mLastDataDirectionIconId:I

.field mLastDataDirectionOverlayIconId:I

.field mLastDataTypeIconId:I

.field protected mLastInetCondition:I

.field private mLastLocale:Ljava/util/Locale;

.field mLastMobileActivityIconId:I

.field mLastPhoneSignalIconId:I

.field mLastSignalLevel:I

.field mLastSimIconId:I

.field mLastWifiIconId:I

.field mLastWimaxIconId:I

.field private mLocale:Ljava/util/Locale;

.field mMobileActivityIconId:I

.field private final mMobileDataController:Lcom/android/systemui_ex/controlpanel/policy/MobileDataController;

.field mMobileLabelViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field mNetworkName:Ljava/lang/String;

.field mNetworkNameDefault:Ljava/lang/String;

.field mNetworkNameSeparator:Ljava/lang/String;

.field mNoSim:Z

.field mNoSimIconId:I

.field mOriginalTelephonyPlmn:Ljava/lang/String;

.field mOriginalTelephonySpn:Ljava/lang/String;

.field protected mPhone:Landroid/telephony/TelephonyManager;

.field mPhoneSignalIconId:I

.field mPhoneSignalIconViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field mPhoneState:I

.field mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field mPlmn:Ljava/lang/String;

.field mQSDataTypeIconId:I

.field mQSPhoneSignalIconId:I

.field mQSWifiIconId:I

.field mServiceState:Landroid/telephony/ServiceState;

.field mShow4GforLTE:Z

.field mShowAtLeastThreeGees:Z

.field mShowPhoneRSSIForData:Z

.field mShowPlmn:Z

.field mShowRsrpSignalLevelforLTE:Z

.field mShowSpn:Z

.field mSignalClusters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl$SignalCluster;",
            ">;"
        }
    .end annotation
.end field

.field mSignalStrength:Landroid/telephony/SignalStrength;

.field mSignalsChangedCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui_ex/controlpanel/policy/NetworkController$NetworkSignalChangedCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mSimOperator:Ljava/lang/String;

.field mSimOperatorCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl$SimOperatorCallback;",
            ">;"
        }
    .end annotation
.end field

.field mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

.field mSpn:Ljava/lang/String;

.field mWifiActivity:I

.field mWifiActivityIconId:I

.field protected mWifiChannel:Lcom/android/internal/util/AsyncChannel;

.field mWifiConnected:Z

.field mWifiEnabled:Z

.field mWifiIconId:I

.field mWifiIconViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field mWifiLabelViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field mWifiLevel:I

.field protected mWifiManager:Landroid/net/wifi/WifiManager;

.field mWifiRssi:I

.field mWifiSsid:Ljava/lang/String;

.field mWifiStateCallback:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui_ex/controlpanel/policy/NetworkController$WifiStateCallback;",
            ">;"
        }
    .end annotation
.end field

.field protected mWimaxConnected:Z

.field protected mWimaxExtraState:I

.field protected mWimaxIconId:I

.field mWimaxIconViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field protected mWimaxIdle:Z

.field protected mWimaxSignal:I

.field protected mWimaxState:I

.field protected mWimaxSupported:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 198
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mAppopsStrictEnabled:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v4, -0x1

    const/4 v5, 0x0

    .line 219
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 75
    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v3, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 76
    iput v5, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mPhoneState:I

    .line 77
    iput v5, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mDataNetType:I

    .line 78
    iput v5, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mDataState:I

    .line 79
    iput v5, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mDataActivity:I

    .line 82
    sget-object v3, Lcom/android/systemui_ex/controlpanel/policy/TelephonyIcons;->DATA_G:[[I

    aget-object v3, v3, v5

    iput-object v3, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mDataIconList:[I

    .line 104
    iput-boolean v5, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mShowPhoneRSSIForData:Z

    .line 105
    iput-boolean v5, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mShowAtLeastThreeGees:Z

    .line 106
    iput-boolean v5, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mShowSpn:Z

    .line 107
    iput-boolean v5, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mShowPlmn:Z

    .line 108
    iput-boolean v5, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mAlwaysShowCdmaRssi:Z

    .line 109
    iput-boolean v5, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mShow4GforLTE:Z

    .line 110
    iput-boolean v5, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mShowRsrpSignalLevelforLTE:Z

    .line 112
    const-string v3, ""

    iput-object v3, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mCarrierText:Ljava/lang/String;

    .line 126
    iput v5, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mWifiIconId:I

    .line 127
    iput v5, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mQSWifiIconId:I

    .line 128
    iput v5, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mWifiActivityIconId:I

    .line 129
    iput v5, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mWifiActivity:I

    .line 132
    iput-boolean v5, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mBluetoothTethered:Z

    .line 133
    const v3, 0x10806c6

    iput v3, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mBluetoothTetherIconId:I

    .line 137
    iput-boolean v5, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mWimaxSupported:Z

    .line 138
    iput-boolean v5, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mIsWimaxEnabled:Z

    .line 139
    iput-boolean v5, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mWimaxConnected:Z

    .line 140
    iput-boolean v5, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mWimaxIdle:Z

    .line 141
    iput v5, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mWimaxIconId:I

    .line 142
    iput v5, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mWimaxSignal:I

    .line 143
    iput v5, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mWimaxState:I

    .line 144
    iput v5, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mWimaxExtraState:I

    .line 145
    iput v6, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mDataServiceState:I

    .line 149
    iput-boolean v5, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mConnected:Z

    .line 150
    iput v4, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mConnectedNetworkType:I

    .line 152
    iput v4, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mLastConnectedNetworkType:I

    .line 154
    iput v5, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mInetCondition:I

    .line 155
    iput v5, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mLastInetCondition:I

    .line 158
    iput-boolean v5, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mAirplaneMode:Z

    .line 159
    iput-boolean v6, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mLastAirplaneMode:Z

    .line 161
    iput-object v7, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mLocale:Ljava/util/Locale;

    .line 162
    iput-object v7, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mLastLocale:Ljava/util/Locale;

    .line 166
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mPhoneSignalIconViews:Ljava/util/ArrayList;

    .line 167
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mDataDirectionIconViews:Ljava/util/ArrayList;

    .line 168
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mDataDirectionOverlayIconViews:Ljava/util/ArrayList;

    .line 169
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mWifiIconViews:Ljava/util/ArrayList;

    .line 170
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mWimaxIconViews:Ljava/util/ArrayList;

    .line 171
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mCombinedSignalIconViews:Ljava/util/ArrayList;

    .line 172
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mDataTypeIconViews:Ljava/util/ArrayList;

    .line 173
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mCombinedLabelViews:Ljava/util/ArrayList;

    .line 174
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mMobileLabelViews:Ljava/util/ArrayList;

    .line 175
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mWifiLabelViews:Ljava/util/ArrayList;

    .line 176
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mEmergencyViews:Ljava/util/ArrayList;

    .line 177
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mSignalClusters:Ljava/util/ArrayList;

    .line 178
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mSignalsChangedCallbacks:Ljava/util/ArrayList;

    .line 180
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mWifiStateCallback:Ljava/util/ArrayList;

    .line 182
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mSimOperatorCallbacks:Ljava/util/ArrayList;

    .line 185
    iput v4, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mLastPhoneSignalIconId:I

    .line 186
    iput v4, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mLastDataDirectionIconId:I

    .line 187
    iput v4, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mLastDataDirectionOverlayIconId:I

    .line 188
    iput v4, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mLastWifiIconId:I

    .line 189
    iput v4, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mLastWimaxIconId:I

    .line 190
    iput v4, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mLastCombinedSignalIconId:I

    .line 191
    iput v4, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mLastDataTypeIconId:I

    .line 192
    const-string v3, ""

    iput-object v3, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mLastCombinedLabel:Ljava/lang/String;

    .line 196
    iput-boolean v5, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mDataAndWifiStacked:Z

    .line 400
    const-string v3, ""

    iput-object v3, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mSimOperator:Ljava/lang/String;

    .line 680
    new-instance v3, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl$3;

    invoke-direct {v3, p0}, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl$3;-><init>(Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;)V

    iput-object v3, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 220
    iput-object p1, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    .line 221
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 223
    .local v2, "res":Landroid/content/res/Resources;
    invoke-static {p1}, Lcom/android/systemui_ex/controlpanel/policy/TelephonyIcons;->initAll(Landroid/content/Context;)V

    .line 224
    iget-object v3, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const-string v4, "connectivity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 226
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v5}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mHasMobileDataFeature:Z

    .line 228
    invoke-static {}, Landroid/app/AppOpsManager;->isStrictEnable()Z

    move-result v3

    sput-boolean v3, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mAppopsStrictEnabled:Z

    .line 230
    const v3, 0x7f090006

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mShowPhoneRSSIForData:Z

    .line 231
    const v3, 0x7f090007

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mShowAtLeastThreeGees:Z

    .line 232
    const v3, 0x112005d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mAlwaysShowCdmaRssi:Z

    .line 234
    iget-object v3, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09000d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mShow4GforLTE:Z

    .line 236
    iget-object v3, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090011

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mShowRsrpSignalLevelforLTE:Z

    .line 239
    invoke-virtual {p0}, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->updateWifiIcons()V

    .line 240
    invoke-virtual {p0}, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->updateWimaxIcons()V

    .line 243
    invoke-virtual {p0, p1}, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->registerPhoneStateListener(Landroid/content/Context;)V

    .line 244
    iget-object v3, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090004

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mHspaDataDistinguishable:Z

    .line 246
    iget-object v3, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v4, 0x7f0c0041

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mNetworkNameSeparator:Ljava/lang/String;

    .line 247
    iget-object v3, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v4, 0x7f0c0014

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mNetworkNameDefault:Ljava/lang/String;

    .line 252
    iget-object v3, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mNetworkNameDefault:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mNetworkName:Ljava/lang/String;

    .line 255
    invoke-virtual {p0}, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->createWifiHandler()V

    .line 258
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 259
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v3, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 260
    const-string v3, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 261
    const-string v3, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 262
    const-string v3, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 263
    const-string v3, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 264
    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE_IMMEDIATE"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 265
    const-string v3, "android.net.conn.INET_CONDITION_ACTION"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 266
    const-string v3, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 267
    const-string v3, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 269
    const-string v3, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 271
    iget-object v3, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1120062

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mWimaxSupported:Z

    .line 273
    iget-boolean v3, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mWimaxSupported:Z

    if-eqz v3, :cond_0

    .line 274
    const-string v3, "android.net.fourG.wimax.WIMAX_NETWORK_STATE_CHANGED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 275
    const-string v3, "android.net.wimax.SIGNAL_LEVEL_CHANGED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 276
    const-string v3, "android.net.fourG.NET_4G_STATE_CHANGED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 278
    :cond_0
    invoke-virtual {p1, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 281
    invoke-virtual {p0}, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->updateAirplaneMode()V

    .line 283
    iget-object v3, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v3, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v3, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mLastLocale:Ljava/util/Locale;

    .line 284
    new-instance v3, Lcom/android/systemui_ex/controlpanel/policy/AccessPointControllerImpl;

    iget-object v4, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/systemui_ex/controlpanel/policy/AccessPointControllerImpl;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mAccessPoints:Lcom/android/systemui_ex/controlpanel/policy/AccessPointControllerImpl;

    .line 285
    iget-object v3, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mAccessPoints:Lcom/android/systemui_ex/controlpanel/policy/AccessPointControllerImpl;

    invoke-virtual {v3, p0}, Lcom/android/systemui_ex/controlpanel/policy/AccessPointControllerImpl;->setNetworkController(Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;)V

    .line 286
    new-instance v3, Lcom/android/systemui_ex/controlpanel/policy/MobileDataController;

    iget-object v4, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/systemui_ex/controlpanel/policy/MobileDataController;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mMobileDataController:Lcom/android/systemui_ex/controlpanel/policy/MobileDataController;

    .line 287
    iget-object v3, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mMobileDataController:Lcom/android/systemui_ex/controlpanel/policy/MobileDataController;

    new-instance v4, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl$1;

    invoke-direct {v4, p0}, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl$1;-><init>(Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;)V

    invoke-virtual {v3, v4}, Lcom/android/systemui_ex/controlpanel/policy/MobileDataController;->setCallback(Lcom/android/systemui_ex/controlpanel/policy/MobileDataController$Callback;)V

    .line 293
    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->updateIconSet()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->updateTelephonySignalStrength()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->updateDataNetType()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->updateDataIcon()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->isCdma()Z

    move-result v0

    return v0
.end method

.method private hasService()Z
    .locals 2

    .prologue
    .line 873
    iget-object v1, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v1, :cond_1

    .line 878
    iget-object v1, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 887
    const/4 v0, 0x1

    .line 893
    .local v0, "retVal":Z
    :goto_0
    return v0

    .line 880
    .end local v0    # "retVal":Z
    :pswitch_0
    const/4 v0, 0x0

    .line 881
    .restart local v0    # "retVal":Z
    goto :goto_0

    .line 884
    .end local v0    # "retVal":Z
    :pswitch_1
    iget-object v1, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 885
    .restart local v0    # "retVal":Z
    :goto_1
    goto :goto_0

    .line 884
    .end local v0    # "retVal":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 890
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "retVal":Z
    goto :goto_0

    .line 878
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private huntForSsid(Landroid/net/wifi/WifiInfo;)Ljava/lang/String;
    .locals 7
    .param p1, "info"    # Landroid/net/wifi/WifiInfo;

    .prologue
    .line 1221
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v3

    .line 1222
    .local v3, "ssid":Ljava/lang/String;
    const-string v4, "StatusBar.NetworkController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "huntForSsid ssid = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1223
    if-eqz v3, :cond_0

    const-string v4, "0x"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1233
    .end local v3    # "ssid":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 1227
    .restart local v3    # "ssid":Ljava/lang/String;
    :cond_0
    iget-object v4, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v2

    .line 1228
    .local v2, "networks":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .line 1229
    .local v1, "net":Landroid/net/wifi/WifiConfiguration;
    iget v4, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v5

    if-ne v4, v5, :cond_1

    .line 1230
    iget-object v3, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    goto :goto_0

    .line 1233
    .end local v1    # "net":Landroid/net/wifi/WifiConfiguration;
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private inetConditionForNetwork(I)I
    .locals 2
    .param p1, "networkType"    # I

    .prologue
    const/4 v0, 0x1

    .line 968
    iget v1, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mInetCondition:I

    if-ne v1, v0, :cond_0

    iget v1, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mConnectedNetworkType:I

    if-ne v1, p1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isCdma()Z
    .locals 1

    .prologue
    .line 868
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mSignalStrength:Landroid/telephony/SignalStrength;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v0}, Landroid/telephony/SignalStrength;->isGsm()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isQsTypeIconWide(I)Z
    .locals 1
    .param p1, "iconId"    # I

    .prologue
    .line 506
    const v0, 0x7f02010d

    if-eq v0, p1, :cond_0

    const v0, 0x7f0200fd

    if-eq v0, p1, :cond_0

    const v0, 0x7f020100

    if-eq v0, p1, :cond_0

    const v0, 0x7f020102

    if-ne v0, p1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isRoaming()Z
    .locals 1

    .prologue
    .line 1019
    invoke-direct {p0}, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->isCdma()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1020
    invoke-virtual {p0}, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->isCdmaEri()Z

    move-result v0

    .line 1022
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isTypeIconWide(I)Z
    .locals 1
    .param p1, "iconId"    # I

    .prologue
    .line 501
    const v0, 0x7f020220

    if-eq v0, p1, :cond_0

    const v0, 0x7f020219

    if-eq v0, p1, :cond_0

    const v0, 0x7f02021a

    if-eq v0, p1, :cond_0

    const v0, 0x7f02021b

    if-ne v0, p1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private refreshLocale()V
    .locals 1

    .prologue
    .line 903
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v0, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mLocale:Ljava/util/Locale;

    .line 904
    return-void
.end method

.method private setCarrierText()V
    .locals 3

    .prologue
    .line 796
    invoke-direct {p0}, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->updateCarrierText()V

    .line 798
    iget-object v2, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mMobileLabelViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 799
    .local v1, "v":Landroid/widget/TextView;
    iget-object v2, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mCarrierText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 800
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 802
    .end local v1    # "v":Landroid/widget/TextView;
    :cond_0
    return-void
.end method

.method private updateCarrierText()V
    .locals 3

    .prologue
    .line 757
    const/4 v0, 0x0

    .line 758
    .local v0, "textResId":I
    iget-boolean v1, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mAirplaneMode:Z

    if-eqz v1, :cond_1

    .line 759
    const v0, 0x10403e4

    .line 790
    :goto_0
    if-eqz v0, :cond_0

    .line 791
    iget-object v1, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mCarrierText:Ljava/lang/String;

    .line 793
    :cond_0
    return-void

    .line 761
    :cond_1
    sget-object v1, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl$4;->$SwitchMap$com$android$internal$telephony$IccCardConstants$State:[I

    iget-object v2, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v2}, Lcom/android/internal/telephony/IccCardConstants$State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 785
    const v0, 0x10403d0

    goto :goto_0

    .line 765
    :pswitch_0
    const v0, 0x10403d0

    .line 766
    goto :goto_0

    .line 768
    :pswitch_1
    const v0, 0x10403e2

    .line 769
    goto :goto_0

    .line 771
    :pswitch_2
    const v0, 0x10403e0

    .line 772
    goto :goto_0

    .line 775
    :pswitch_3
    iget-object v1, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mNetworkName:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mCarrierText:Ljava/lang/String;

    goto :goto_0

    .line 778
    :pswitch_4
    const v0, 0x10403d4

    .line 780
    goto :goto_0

    .line 782
    :pswitch_5
    const v0, 0x10403de

    .line 783
    goto :goto_0

    .line 761
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private final updateDataIcon()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 1037
    const/4 v0, 0x0

    .line 1038
    .local v0, "iconId":I
    const/4 v1, 0x1

    .line 1039
    .local v1, "visible":Z
    iget v2, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mDataNetType:I

    if-nez v2, :cond_0

    .line 1041
    const/4 v1, 0x0

    .line 1068
    :goto_0
    iput v0, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mDataDirectionIconId:I

    .line 1069
    iput v0, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mMobileActivityIconId:I

    .line 1070
    iput-boolean v1, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mDataConnected:Z

    .line 1077
    return-void

    .line 1042
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->isCdma()Z

    move-result v2

    if-nez v2, :cond_4

    .line 1044
    iget-object v2, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v2, v3, :cond_1

    iget-object v2, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v2, v3, :cond_3

    .line 1046
    :cond_1
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mNoSim:Z

    .line 1047
    iget v2, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mDataState:I

    if-ne v2, v4, :cond_2

    .line 1048
    iget v2, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mDataActivity:I

    invoke-static {v2}, Lcom/android/systemui_ex/controlpanel/policy/TelephonyIcons;->getDataActivity(I)I

    move-result v0

    goto :goto_0

    .line 1050
    :cond_2
    const/4 v0, 0x0

    .line 1051
    const/4 v1, 0x0

    goto :goto_0

    .line 1054
    :cond_3
    invoke-static {}, Lcom/android/systemui_ex/controlpanel/policy/TelephonyIcons;->getNoSimIcon()I

    move-result v0

    .line 1055
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mNoSim:Z

    .line 1056
    const/4 v1, 0x0

    goto :goto_0

    .line 1060
    :cond_4
    iget v2, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mDataState:I

    if-ne v2, v4, :cond_5

    .line 1061
    iget v2, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mDataActivity:I

    invoke-static {v2}, Lcom/android/systemui_ex/controlpanel/policy/TelephonyIcons;->getDataActivity(I)I

    move-result v0

    goto :goto_0

    .line 1063
    :cond_5
    const/4 v0, 0x0

    .line 1064
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private final updateDataNetType()V
    .locals 4

    .prologue
    const v3, 0x7f020221

    .line 973
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mQSDataTypeIconId:I

    iput v1, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 974
    iget-boolean v1, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mIsWimaxEnabled:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mWimaxConnected:Z

    if-eqz v1, :cond_1

    .line 976
    const/4 v1, 0x6

    invoke-direct {p0, v1}, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->inetConditionForNetwork(I)I

    move-result v0

    .line 977
    .local v0, "inetCondition":I
    const v1, 0x7f02021b

    iput v1, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 978
    sget-object v1, Lcom/android/systemui_ex/controlpanel/policy/TelephonyIcons;->QS_DATA_4G:[I

    aget v1, v1, v0

    iput v1, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mQSDataTypeIconId:I

    .line 979
    iget-object v1, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v2, 0x7f0c009a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    .line 986
    .end local v0    # "inetCondition":I
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->isCdma()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 987
    invoke-virtual {p0}, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->isCdmaEri()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 988
    iput v3, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 989
    sget-object v1, Lcom/android/systemui_ex/controlpanel/policy/TelephonyIcons;->QS_DATA_R:[I

    iget v2, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mInetCondition:I

    aget v1, v1, v2

    iput v1, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mQSDataTypeIconId:I

    .line 1001
    :cond_0
    :goto_1
    return-void

    .line 982
    :cond_1
    invoke-static {}, Lcom/android/systemui_ex/controlpanel/policy/TelephonyIcons;->getDataTypeIcon()I

    move-result v1

    iput v1, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 983
    invoke-static {}, Lcom/android/systemui_ex/controlpanel/policy/TelephonyIcons;->getDataTypeDesc()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    .line 984
    invoke-static {}, Lcom/android/systemui_ex/controlpanel/policy/TelephonyIcons;->getQSDataTypeIcon()I

    move-result v1

    iput v1, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mQSDataTypeIconId:I

    goto :goto_0

    .line 991
    :cond_2
    iget-object v1, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 992
    iput v3, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 993
    sget-object v1, Lcom/android/systemui_ex/controlpanel/policy/TelephonyIcons;->QS_DATA_R:[I

    iget v2, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mInetCondition:I

    aget v1, v1, v2

    iput v1, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mQSDataTypeIconId:I

    goto :goto_1
.end method

.method private updateIconSet()V
    .locals 7

    .prologue
    .line 805
    invoke-virtual {p0}, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->getVoiceNetworkType()I

    move-result v2

    .line 806
    .local v2, "voiceNetworkType":I
    invoke-virtual {p0}, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->getDataNetworkType()I

    move-result v1

    .line 815
    .local v1, "dataNetworkType":I
    if-nez v1, :cond_0

    move v0, v2

    .line 826
    .local v0, "chosenNetworkType":I
    :goto_0
    iget-boolean v3, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mShowAtLeastThreeGees:Z

    iget-boolean v4, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mShow4GforLTE:Z

    iget-boolean v5, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mHspaDataDistinguishable:Z

    iget v6, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mInetCondition:I

    invoke-static {v0, v3, v4, v5, v6}, Lcom/android/systemui_ex/controlpanel/policy/TelephonyIcons;->updateDataType(IZZZI)V

    .line 828
    return-void

    .end local v0    # "chosenNetworkType":I
    :cond_0
    move v0, v1

    .line 815
    goto :goto_0
.end method

.method private final updateSimIcon()V
    .locals 2

    .prologue
    .line 1028
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v0, v1, :cond_0

    .line 1029
    invoke-static {}, Lcom/android/systemui_ex/controlpanel/policy/TelephonyIcons;->getNoSimIcon()I

    move-result v0

    iput v0, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mNoSimIconId:I

    .line 1033
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->refreshViews()V

    .line 1034
    return-void

    .line 1031
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mNoSimIconId:I

    goto :goto_0
.end method

.method private final updateTelephonySignalStrength()V
    .locals 5

    .prologue
    const v4, 0x7f02010e

    const/4 v2, 0x0

    .line 911
    invoke-direct {p0}, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->hasService()Z

    move-result v3

    if-nez v3, :cond_0

    iget v3, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mDataServiceState:I

    if-eqz v3, :cond_0

    .line 914
    invoke-static {}, Lcom/android/systemui_ex/controlpanel/policy/TelephonyIcons;->getSignalNullIcon()I

    move-result v3

    iput v3, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mPhoneSignalIconId:I

    .line 915
    iput v4, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mQSPhoneSignalIconId:I

    .line 916
    iget v3, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mPhoneSignalIconId:I

    iput v3, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mDataSignalIconId:I

    .line 917
    invoke-static {v2}, Lcom/android/systemui_ex/controlpanel/policy/TelephonyIcons;->getSignalStrengthDes(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mContentDescriptionPhoneSignal:Ljava/lang/String;

    .line 965
    :goto_0
    return-void

    .line 919
    :cond_0
    iget-object v3, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mSignalStrength:Landroid/telephony/SignalStrength;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mServiceState:Landroid/telephony/ServiceState;

    if-nez v3, :cond_2

    .line 921
    :cond_1
    invoke-static {}, Lcom/android/systemui_ex/controlpanel/policy/TelephonyIcons;->getSignalNullIcon()I

    move-result v3

    iput v3, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mPhoneSignalIconId:I

    .line 922
    iput v4, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mQSPhoneSignalIconId:I

    .line 923
    iget v3, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mPhoneSignalIconId:I

    iput v3, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mDataSignalIconId:I

    .line 924
    invoke-static {v2}, Lcom/android/systemui_ex/controlpanel/policy/TelephonyIcons;->getSignalStrengthDes(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mContentDescriptionPhoneSignal:Ljava/lang/String;

    goto :goto_0

    .line 927
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->isCdma()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-boolean v3, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mAlwaysShowCdmaRssi:Z

    if-eqz v3, :cond_4

    .line 928
    iget-object v2, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v2}, Landroid/telephony/SignalStrength;->getCdmaLevel()I

    move-result v0

    .local v0, "iconLevel":I
    iput v0, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mLastSignalLevel:I

    .line 948
    :cond_3
    :goto_1
    iget v2, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mInetCondition:I

    invoke-direct {p0}, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->isRoaming()Z

    move-result v3

    invoke-static {v2, v0, v3}, Lcom/android/systemui_ex/controlpanel/policy/TelephonyIcons;->getSignalStrengthIcon(IIZ)I

    move-result v2

    iput v2, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mPhoneSignalIconId:I

    .line 950
    iget v2, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mPhoneSignalIconId:I

    iput v2, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mDataSignalIconId:I

    .line 951
    sget-object v2, Lcom/android/systemui_ex/controlpanel/policy/TelephonyIcons;->QS_TELEPHONY_SIGNAL_STRENGTH:[[I

    iget v3, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mInetCondition:I

    aget-object v2, v2, v3

    aget v2, v2, v0

    iput v2, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mQSPhoneSignalIconId:I

    .line 953
    invoke-static {v0}, Lcom/android/systemui_ex/controlpanel/policy/TelephonyIcons;->getSignalStrengthDes(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mContentDescriptionPhoneSignal:Ljava/lang/String;

    goto :goto_0

    .line 936
    .end local v0    # "iconLevel":I
    :cond_4
    iget-object v3, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v3}, Landroid/telephony/SignalStrength;->getLevel()I

    move-result v0

    .restart local v0    # "iconLevel":I
    iput v0, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mLastSignalLevel:I

    .line 937
    iget-boolean v3, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mShowRsrpSignalLevelforLTE:Z

    if-eqz v3, :cond_3

    .line 938
    iget-object v3, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getDataNetworkType()I

    move-result v3

    const/16 v4, 0xd

    if-ne v3, v4, :cond_3

    .line 940
    iget-object v3, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v3}, Landroid/telephony/SignalStrength;->getAlternateLteLevel()I

    move-result v1

    .line 941
    .local v1, "level":I
    const/4 v3, -0x1

    if-ne v1, v3, :cond_5

    move v0, v2

    :goto_2
    iput v0, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mLastSignalLevel:I

    goto :goto_1

    :cond_5
    move v0, v1

    goto :goto_2
.end method


# virtual methods
.method public addWifiStateCallback(Lcom/android/systemui_ex/controlpanel/policy/NetworkController$WifiStateCallback;)V
    .locals 1
    .param p1, "cb"    # Lcom/android/systemui_ex/controlpanel/policy/NetworkController$WifiStateCallback;

    .prologue
    .line 2010
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mWifiStateCallback:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2011
    return-void
.end method

.method public appendRatToNetworkName(Ljava/lang/String;Landroid/telephony/ServiceState;)Ljava/lang/String;
    .locals 8
    .param p1, "operator"    # Ljava/lang/String;
    .param p2, "state"    # Landroid/telephony/ServiceState;

    .prologue
    .line 1120
    const-string v2, ""

    .line 1121
    .local v2, "opeartorName":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {p2}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v6

    if-nez v6, :cond_2

    .line 1123
    :cond_0
    invoke-virtual {p2}, Landroid/telephony/ServiceState;->getVoiceNetworkType()I

    move-result v5

    .line 1124
    .local v5, "voiceNetType":I
    invoke-virtual {p2}, Landroid/telephony/ServiceState;->getDataNetworkType()I

    move-result v1

    .line 1125
    .local v1, "dataNetType":I
    if-nez v1, :cond_1

    move v0, v5

    .line 1128
    .local v0, "chosenNetType":I
    :goto_0
    iget-object v6, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const-string v7, "phone"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    .line 1130
    .local v4, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v4, v0}, Landroid/telephony/TelephonyManager;->networkTypeToString(I)Ljava/lang/String;

    move-result-object v3

    .line 1131
    .local v3, "ratString":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1136
    .end local v0    # "chosenNetType":I
    .end local v1    # "dataNetType":I
    .end local v3    # "ratString":Ljava/lang/String;
    .end local v4    # "tm":Landroid/telephony/TelephonyManager;
    .end local v5    # "voiceNetType":I
    :goto_1
    return-object v2

    .restart local v1    # "dataNetType":I
    .restart local v5    # "voiceNetType":I
    :cond_1
    move v0, v1

    .line 1125
    goto :goto_0

    .line 1134
    .end local v1    # "dataNetType":I
    .end local v5    # "voiceNetType":I
    :cond_2
    move-object v2, p1

    goto :goto_1
.end method

.method protected createWifiHandler()V
    .locals 4

    .prologue
    .line 325
    iget-object v2, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const-string v3, "wifi"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    iput-object v2, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 326
    new-instance v0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl$WifiHandler;

    invoke-direct {v0, p0}, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl$WifiHandler;-><init>(Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;)V

    .line 327
    .local v0, "handler":Landroid/os/Handler;
    new-instance v2, Lcom/android/internal/util/AsyncChannel;

    invoke-direct {v2}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    iput-object v2, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mWifiChannel:Lcom/android/internal/util/AsyncChannel;

    .line 328
    iget-object v2, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getWifiServiceMessenger()Landroid/os/Messenger;

    move-result-object v1

    .line 329
    .local v1, "wifiMessenger":Landroid/os/Messenger;
    if-eqz v1, :cond_0

    .line 330
    iget-object v2, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mWifiChannel:Lcom/android/internal/util/AsyncChannel;

    iget-object v3, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3, v0, v1}, Lcom/android/internal/util/AsyncChannel;->connect(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)V

    .line 332
    :cond_0
    return-void
.end method

.method public dispatchDemoCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 19
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    .line 1906
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mDemoMode:Z

    if-nez v4, :cond_1

    const-string v4, "enter"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1907
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mDemoMode:Z

    .line 1908
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mWifiLevel:I

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mDemoWifiLevel:I

    .line 1909
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mWifiActivityIconId:I

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mDemoWifiActivityId:I

    .line 1910
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mInetCondition:I

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mDemoInetCondition:I

    .line 1911
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mDataTypeIconId:I

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mDemoDataTypeIconId:I

    .line 1912
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mQSDataTypeIconId:I

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mDemoQSDataTypeIconId:I

    .line 1913
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mLastSignalLevel:I

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mDemoMobileLevel:I

    .line 1914
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mMobileActivityIconId:I

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mDemoMobileActivityId:I

    .line 2001
    :cond_0
    :goto_0
    return-void

    .line 1915
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mDemoMode:Z

    if-eqz v4, :cond_3

    const-string v4, "exit"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1916
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mDemoMode:Z

    .line 1917
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mSignalClusters:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl$SignalCluster;

    .line 1918
    .local v1, "cluster":Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl$SignalCluster;
    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->refreshSignalCluster(Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl$SignalCluster;)V

    goto :goto_1

    .line 1920
    .end local v1    # "cluster":Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl$SignalCluster;
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->refreshViews()V

    goto :goto_0

    .line 1921
    .end local v14    # "i$":Ljava/util/Iterator;
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mDemoMode:Z

    if-eqz v4, :cond_0

    const-string v4, "network"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1922
    const-string v4, "airplane"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1923
    .local v11, "airplane":Ljava/lang/String;
    if-eqz v11, :cond_4

    .line 1924
    const-string v4, "show"

    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 1925
    .local v2, "show":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mSignalClusters:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .restart local v14    # "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl$SignalCluster;

    .line 1926
    .restart local v1    # "cluster":Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl$SignalCluster;
    const v4, 0x7f02020d

    invoke-interface {v1, v2, v4}, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl$SignalCluster;->setIsAirplaneMode(ZI)V

    goto :goto_2

    .line 1929
    .end local v1    # "cluster":Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl$SignalCluster;
    .end local v2    # "show":Z
    .end local v14    # "i$":Ljava/util/Iterator;
    :cond_4
    const-string v4, "fully"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1930
    .local v13, "fully":Ljava/lang/String;
    if-eqz v13, :cond_5

    .line 1931
    invoke-static {v13}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    const/4 v4, 0x1

    :goto_3
    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mDemoInetCondition:I

    .line 1933
    :cond_5
    const-string v4, "wifi"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 1934
    .local v18, "wifi":Ljava/lang/String;
    if-eqz v18, :cond_b

    .line 1935
    const-string v4, "show"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 1936
    .restart local v2    # "show":Z
    const-string v4, "level"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 1937
    .local v16, "level":Ljava/lang/String;
    if-eqz v16, :cond_6

    .line 1938
    const-string v4, "null"

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    const/4 v4, -0x1

    :goto_4
    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mDemoWifiLevel:I

    .line 1941
    :cond_6
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mDemoWifiLevel:I

    if-gez v4, :cond_9

    const v3, 0x7f020420

    .line 1943
    .local v3, "iconId":I
    :goto_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mSignalClusters:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .restart local v14    # "i$":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl$SignalCluster;

    .line 1944
    .restart local v1    # "cluster":Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl$SignalCluster;
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mDemoWifiActivityId:I

    const-string v5, "Demo"

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl$SignalCluster;->setWifiIndicators(ZIILjava/lang/String;)V

    goto :goto_6

    .line 1931
    .end local v1    # "cluster":Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl$SignalCluster;
    .end local v2    # "show":Z
    .end local v3    # "iconId":I
    .end local v14    # "i$":Ljava/util/Iterator;
    .end local v16    # "level":Ljava/lang/String;
    .end local v18    # "wifi":Ljava/lang/String;
    :cond_7
    const/4 v4, 0x0

    goto :goto_3

    .line 1938
    .restart local v2    # "show":Z
    .restart local v16    # "level":Ljava/lang/String;
    .restart local v18    # "wifi":Ljava/lang/String;
    :cond_8
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    sget v5, Lcom/android/systemui_ex/controlpanel/policy/WifiIcons;->WIFI_LEVEL_COUNT:I

    add-int/lit8 v5, v5, -0x1

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    goto :goto_4

    .line 1941
    :cond_9
    sget-object v4, Lcom/android/systemui_ex/controlpanel/policy/WifiIcons;->WIFI_SIGNAL_STRENGTH:[[I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mDemoInetCondition:I

    aget-object v4, v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mDemoWifiLevel:I

    aget v3, v4, v5

    goto :goto_5

    .line 1950
    .restart local v3    # "iconId":I
    .restart local v14    # "i$":Ljava/util/Iterator;
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->refreshViews()V

    .line 1952
    .end local v2    # "show":Z
    .end local v3    # "iconId":I
    .end local v14    # "i$":Ljava/util/Iterator;
    .end local v16    # "level":Ljava/lang/String;
    :cond_b
    const-string v4, "mobile"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 1953
    .local v17, "mobile":Ljava/lang/String;
    if-eqz v17, :cond_0

    .line 1954
    const-string v4, "show"

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 1955
    .restart local v2    # "show":Z
    const-string v4, "datatype"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1956
    .local v12, "datatype":Ljava/lang/String;
    if-eqz v12, :cond_c

    .line 1957
    const-string v4, "1x"

    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    const v4, 0x7f020219

    :goto_7
    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mDemoDataTypeIconId:I

    .line 1967
    const-string v4, "1x"

    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_16

    const v4, 0x7f0200fd

    :goto_8
    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mDemoQSDataTypeIconId:I

    .line 1978
    :cond_c
    sget-object v15, Lcom/android/systemui_ex/controlpanel/policy/TelephonyIcons;->TELEPHONY_SIGNAL_STRENGTH:[[I

    .line 1979
    .local v15, "icons":[[I
    const-string v4, "level"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 1980
    .restart local v16    # "level":Ljava/lang/String;
    if-eqz v16, :cond_d

    .line 1981
    const-string v4, "null"

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1e

    const/4 v4, -0x1

    :goto_9
    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mDemoMobileLevel:I

    .line 1984
    :cond_d
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mDemoMobileLevel:I

    if-gez v4, :cond_1f

    const v3, 0x7f020402

    .line 1986
    .restart local v3    # "iconId":I
    :goto_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mSignalClusters:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .restart local v14    # "i$":Ljava/util/Iterator;
    :goto_b
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_21

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl$SignalCluster;

    .line 1987
    .restart local v1    # "cluster":Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl$SignalCluster;
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mDemoMobileActivityId:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mDemoDataTypeIconId:I

    const-string v6, "Demo"

    const-string v7, "Demo"

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mDemoDataTypeIconId:I

    const v9, 0x7f020221

    if-ne v8, v9, :cond_20

    const/4 v8, 0x1

    :goto_c
    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mDemoDataTypeIconId:I

    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->isTypeIconWide(I)Z

    move-result v9

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mNoSimIconId:I

    invoke-interface/range {v1 .. v10}, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl$SignalCluster;->setMobileDataIndicators(ZIIILjava/lang/String;Ljava/lang/String;ZZI)V

    goto :goto_b

    .line 1957
    .end local v1    # "cluster":Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl$SignalCluster;
    .end local v3    # "iconId":I
    .end local v14    # "i$":Ljava/util/Iterator;
    .end local v15    # "icons":[[I
    .end local v16    # "level":Ljava/lang/String;
    :cond_e
    const-string v4, "3g"

    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    const v4, 0x7f02021a

    goto :goto_7

    :cond_f
    const-string v4, "4g"

    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    const v4, 0x7f02021b

    goto/16 :goto_7

    :cond_10
    const-string v4, "e"

    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    const v4, 0x7f02021c

    goto/16 :goto_7

    :cond_11
    const-string v4, "g"

    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    const v4, 0x7f02021d

    goto/16 :goto_7

    :cond_12
    const-string v4, "h"

    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    const v4, 0x7f02021e

    goto/16 :goto_7

    :cond_13
    const-string v4, "lte"

    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    const v4, 0x7f020220

    goto/16 :goto_7

    :cond_14
    const-string v4, "roam"

    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    const v4, 0x7f020221

    goto/16 :goto_7

    :cond_15
    const/4 v4, 0x0

    goto/16 :goto_7

    .line 1967
    :cond_16
    const-string v4, "3g"

    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_17

    const v4, 0x7f020100

    goto/16 :goto_8

    :cond_17
    const-string v4, "4g"

    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    const v4, 0x7f020102

    goto/16 :goto_8

    :cond_18
    const-string v4, "e"

    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19

    const v4, 0x7f020104

    goto/16 :goto_8

    :cond_19
    const-string v4, "g"

    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1a

    const v4, 0x7f02010a

    goto/16 :goto_8

    :cond_1a
    const-string v4, "h"

    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b

    const v4, 0x7f02010b

    goto/16 :goto_8

    :cond_1b
    const-string v4, "lte"

    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1c

    const v4, 0x7f02010d

    goto/16 :goto_8

    :cond_1c
    const-string v4, "roam"

    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1d

    const v4, 0x7f020110

    goto/16 :goto_8

    :cond_1d
    const/4 v4, 0x0

    goto/16 :goto_8

    .line 1981
    .restart local v15    # "icons":[[I
    .restart local v16    # "level":Ljava/lang/String;
    :cond_1e
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x0

    aget-object v5, v15, v5

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    goto/16 :goto_9

    .line 1984
    :cond_1f
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mDemoInetCondition:I

    aget-object v4, v15, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mDemoMobileLevel:I

    aget v3, v4, v5

    goto/16 :goto_a

    .line 1987
    .restart local v1    # "cluster":Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl$SignalCluster;
    .restart local v3    # "iconId":I
    .restart local v14    # "i$":Ljava/util/Iterator;
    :cond_20
    const/4 v8, 0x0

    goto/16 :goto_c

    .line 1998
    .end local v1    # "cluster":Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl$SignalCluster;
    :cond_21
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->refreshViews()V

    goto/16 :goto_0
.end method

.method public getAccessPointController()Lcom/android/systemui_ex/controlpanel/policy/NetworkController$AccessPointController;
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mAccessPoints:Lcom/android/systemui_ex/controlpanel/policy/AccessPointControllerImpl;

    return-object v0
.end method

.method public getConnectedWifiLevel()I
    .locals 1

    .prologue
    .line 297
    iget v0, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mWifiLevel:I

    return v0
.end method

.method public getCurrentWifiState()Z
    .locals 1

    .prologue
    .line 2005
    iget-boolean v0, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mWifiEnabled:Z

    return v0
.end method

.method public getDataNetworkType()I
    .locals 1

    .prologue
    .line 1739
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mServiceState:Landroid/telephony/ServiceState;

    if-nez v0, :cond_0

    .line 1740
    const/4 v0, 0x0

    .line 1742
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getDataNetworkType()I

    move-result v0

    goto :goto_0
.end method

.method protected getLocaleString(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "originalCarrier"    # Ljava/lang/String;

    .prologue
    .line 673
    iget-object v1, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v2, 0x1070045

    const v3, 0x1070046

    invoke-static {v1, p1, v2, v3}, Landroid/util/NativeTextHelper;->getLocalString(Landroid/content/Context;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    .line 677
    .local v0, "localeCarrier":Ljava/lang/String;
    return-object v0
.end method

.method public getSimOperator()Ljava/lang/String;
    .locals 1

    .prologue
    .line 404
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVoiceNetworkType()I
    .locals 1

    .prologue
    .line 1732
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mServiceState:Landroid/telephony/ServiceState;

    if-nez v0, :cond_0

    .line 1733
    const/4 v0, 0x0

    .line 1735
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getVoiceNetworkType()I

    move-result v0

    goto :goto_0
.end method

.method isCdmaEri()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 1004
    iget-object v3, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v3, :cond_2

    invoke-direct {p0}, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->hasService()Z

    move-result v3

    if-nez v3, :cond_0

    iget v3, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mDataServiceState:I

    if-nez v3, :cond_2

    .line 1006
    :cond_0
    iget-object v3, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getCdmaEriIconIndex()I

    move-result v0

    .line 1007
    .local v0, "iconIndex":I
    if-eq v0, v2, :cond_2

    .line 1008
    iget-object v3, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getCdmaEriIconMode()I

    move-result v1

    .line 1009
    .local v1, "iconMode":I
    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_2

    .line 1015
    .end local v0    # "iconIndex":I
    .end local v1    # "iconMode":I
    :cond_1
    :goto_0
    return v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isEmergencyOnly()Z
    .locals 1

    .prologue
    .line 320
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->isEmergencyOnly()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public notifyAirplaneModeChanged()V
    .locals 3

    .prologue
    .line 2031
    iget-object v2, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mWifiStateCallback:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui_ex/controlpanel/policy/NetworkController$WifiStateCallback;

    .line 2032
    .local v0, "cb":Lcom/android/systemui_ex/controlpanel/policy/NetworkController$WifiStateCallback;
    iget-boolean v2, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mAirplaneMode:Z

    invoke-interface {v0, v2}, Lcom/android/systemui_ex/controlpanel/policy/NetworkController$WifiStateCallback;->onAirplaneModeChanged(Z)V

    goto :goto_0

    .line 2034
    .end local v0    # "cb":Lcom/android/systemui_ex/controlpanel/policy/NetworkController$WifiStateCallback;
    :cond_0
    return-void
.end method

.method notifySignalsChangedCallbacks(Lcom/android/systemui_ex/controlpanel/policy/NetworkController$NetworkSignalChangedCallback;)V
    .locals 21
    .param p1, "cb"    # Lcom/android/systemui_ex/controlpanel/policy/NetworkController$NetworkSignalChangedCallback;

    .prologue
    .line 558
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mWifiEnabled:Z

    if-eqz v1, :cond_5

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mWifiConnected:Z

    if-nez v1, :cond_0

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mHasMobileDataFeature:Z

    if-nez v1, :cond_5

    :cond_0
    const/16 v20, 0x1

    .line 559
    .local v20, "wifiEnabled":Z
    :goto_0
    if-eqz v20, :cond_6

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mWifiSsid:Ljava/lang/String;

    .line 561
    .local v8, "wifiDesc":Ljava/lang/String;
    :goto_1
    if-eqz v20, :cond_7

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mWifiSsid:Ljava/lang/String;

    if-eqz v1, :cond_7

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mWifiActivity:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mWifiActivity:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_7

    :cond_1
    const/4 v5, 0x1

    .line 564
    .local v5, "wifiIn":Z
    :goto_2
    if-eqz v20, :cond_8

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mWifiSsid:Ljava/lang/String;

    if-eqz v1, :cond_8

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mWifiActivity:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mWifiActivity:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_8

    :cond_2
    const/4 v6, 0x1

    .line 567
    .local v6, "wifiOut":Z
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mWifiEnabled:Z

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mWifiConnected:Z

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mQSWifiIconId:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mContentDescriptionWifi:Ljava/lang/String;

    move-object/from16 v1, p1

    invoke-interface/range {v1 .. v8}, Lcom/android/systemui_ex/controlpanel/policy/NetworkController$NetworkSignalChangedCallback;->onWifiSignalChanged(ZZIZZLjava/lang/String;Ljava/lang/String;)V

    .line 570
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mDataConnected:Z

    if-eqz v1, :cond_9

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mDataActivity:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_3

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mDataActivity:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_9

    :cond_3
    const/4 v14, 0x1

    .line 572
    .local v14, "mobileIn":Z
    :goto_4
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mDataConnected:Z

    if-eqz v1, :cond_a

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mDataActivity:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_4

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mDataActivity:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_a

    :cond_4
    const/4 v15, 0x1

    .line 574
    .local v15, "mobileOut":Z
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->isEmergencyOnly()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 575
    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mQSPhoneSignalIconId:I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mContentDescriptionPhoneSignal:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mQSDataTypeIconId:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mNoSim:Z

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mQSDataTypeIconId:I

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->isQsTypeIconWide(I)Z

    move-result v19

    move-object/from16 v9, p1

    invoke-interface/range {v9 .. v19}, Lcom/android/systemui_ex/controlpanel/policy/NetworkController$NetworkSignalChangedCallback;->onMobileDataSignalChanged(ZILjava/lang/String;IZZLjava/lang/String;Ljava/lang/String;ZZ)V

    .line 593
    :goto_6
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mAirplaneMode:Z

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Lcom/android/systemui_ex/controlpanel/policy/NetworkController$NetworkSignalChangedCallback;->onAirplaneModeChanged(Z)V

    .line 594
    return-void

    .line 558
    .end local v5    # "wifiIn":Z
    .end local v6    # "wifiOut":Z
    .end local v8    # "wifiDesc":Ljava/lang/String;
    .end local v14    # "mobileIn":Z
    .end local v15    # "mobileOut":Z
    .end local v20    # "wifiEnabled":Z
    :cond_5
    const/16 v20, 0x0

    goto/16 :goto_0

    .line 559
    .restart local v20    # "wifiEnabled":Z
    :cond_6
    const/4 v8, 0x0

    goto/16 :goto_1

    .line 561
    .restart local v8    # "wifiDesc":Ljava/lang/String;
    :cond_7
    const/4 v5, 0x0

    goto/16 :goto_2

    .line 564
    .restart local v5    # "wifiIn":Z
    :cond_8
    const/4 v6, 0x0

    goto/16 :goto_3

    .line 570
    .restart local v6    # "wifiOut":Z
    :cond_9
    const/4 v14, 0x0

    goto :goto_4

    .line 572
    .restart local v14    # "mobileIn":Z
    :cond_a
    const/4 v15, 0x0

    goto :goto_5

    .line 579
    .restart local v15    # "mobileOut":Z
    :cond_b
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mIsWimaxEnabled:Z

    if-eqz v1, :cond_c

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mWimaxConnected:Z

    if-eqz v1, :cond_c

    .line 581
    const/4 v10, 0x1

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mQSPhoneSignalIconId:I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mContentDescriptionPhoneSignal:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mQSDataTypeIconId:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mNetworkName:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mNoSim:Z

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mQSDataTypeIconId:I

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->isQsTypeIconWide(I)Z

    move-result v19

    move-object/from16 v9, p1

    invoke-interface/range {v9 .. v19}, Lcom/android/systemui_ex/controlpanel/policy/NetworkController$NetworkSignalChangedCallback;->onMobileDataSignalChanged(ZILjava/lang/String;IZZLjava/lang/String;Ljava/lang/String;ZZ)V

    goto :goto_6

    .line 587
    :cond_c
    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mHasMobileDataFeature:Z

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mQSPhoneSignalIconId:I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mContentDescriptionPhoneSignal:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mQSDataTypeIconId:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mNetworkName:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mNoSim:Z

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mQSDataTypeIconId:I

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->isQsTypeIconWide(I)Z

    move-result v19

    move-object/from16 v9, p1

    invoke-interface/range {v9 .. v19}, Lcom/android/systemui_ex/controlpanel/policy/NetworkController$NetworkSignalChangedCallback;->onMobileDataSignalChanged(ZILjava/lang/String;IZZLjava/lang/String;Ljava/lang/String;ZZ)V

    goto/16 :goto_6
.end method

.method public notifySimOperatorCallbacks(Z)V
    .locals 3
    .param p1, "bRef"    # Z

    .prologue
    .line 425
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->getSimOperator()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mSimOperator:Ljava/lang/String;

    .line 426
    :cond_0
    iget-object v2, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mSimOperatorCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl$SimOperatorCallback;

    .line 427
    .local v0, "cb":Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl$SimOperatorCallback;
    iget-object v2, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mSimOperator:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->parseOperatorCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl$SimOperatorCallback;->onSimStatChanged(Ljava/lang/String;)V

    goto :goto_0

    .line 429
    .end local v0    # "cb":Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl$SimOperatorCallback;
    :cond_1
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x0

    const v2, 0x1120098

    const/4 v5, 0x0

    .line 602
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 603
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 606
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->updateWifiState(Landroid/content/Intent;)V

    .line 607
    invoke-virtual {p0}, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->refreshViews()V

    .line 668
    :cond_1
    :goto_0
    return-void

    .line 608
    :cond_2
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 609
    invoke-virtual {p0, p2}, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->updateSimState(Landroid/content/Intent;)V

    .line 610
    invoke-direct {p0}, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->updateDataIcon()V

    .line 612
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->notifySimOperatorCallbacks(Z)V

    .line 614
    invoke-virtual {p0}, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->refreshViews()V

    goto :goto_0

    .line 615
    :cond_3
    const-string v1, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 616
    const-string v1, "showSpn"

    invoke-virtual {p2, v1, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mShowSpn:Z

    .line 617
    const-string v1, "showPlmn"

    invoke-virtual {p2, v1, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mShowPlmn:Z

    .line 618
    const-string v1, "spn"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mSpn:Ljava/lang/String;

    .line 619
    const-string v1, "plmn"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mPlmn:Ljava/lang/String;

    .line 620
    iget-object v1, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mSpn:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mOriginalTelephonySpn:Ljava/lang/String;

    .line 621
    iget-object v1, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mPlmn:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mOriginalTelephonyPlmn:Ljava/lang/String;

    .line 622
    iget-object v1, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 624
    iget-boolean v1, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mShowSpn:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mSpn:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 625
    iget-object v1, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mOriginalTelephonySpn:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->getLocaleString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mSpn:Ljava/lang/String;

    .line 627
    :cond_4
    iget-boolean v1, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mShowPlmn:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mPlmn:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 628
    iget-object v1, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mOriginalTelephonyPlmn:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->getLocaleString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mPlmn:Ljava/lang/String;

    .line 631
    :cond_5
    iget-boolean v1, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mShowSpn:Z

    iget-object v2, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mSpn:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mShowPlmn:Z

    iget-object v4, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mPlmn:Ljava/lang/String;

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->updateNetworkName(ZLjava/lang/String;ZLjava/lang/String;)V

    .line 632
    invoke-virtual {p0}, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->refreshViews()V

    goto/16 :goto_0

    .line 633
    :cond_6
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE_IMMEDIATE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "android.net.conn.INET_CONDITION_ACTION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 635
    :cond_7
    invoke-virtual {p0, p2}, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->updateConnectivity(Landroid/content/Intent;)V

    .line 636
    invoke-virtual {p0}, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->refreshViews()V

    goto/16 :goto_0

    .line 637
    :cond_8
    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 639
    iget-object v1, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 641
    iget-boolean v1, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mShowSpn:Z

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mSpn:Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 642
    iget-object v1, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mOriginalTelephonySpn:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->getLocaleString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mSpn:Ljava/lang/String;

    .line 644
    :cond_9
    iget-boolean v1, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mShowPlmn:Z

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mPlmn:Ljava/lang/String;

    if-eqz v1, :cond_a

    .line 645
    iget-object v1, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mOriginalTelephonyPlmn:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->getLocaleString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mPlmn:Ljava/lang/String;

    .line 648
    :cond_a
    iget-boolean v1, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mShowSpn:Z

    iget-object v2, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mSpn:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mShowPlmn:Z

    iget-object v4, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mPlmn:Ljava/lang/String;

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->updateNetworkName(ZLjava/lang/String;ZLjava/lang/String;)V

    .line 649
    invoke-direct {p0}, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->refreshLocale()V

    .line 650
    invoke-virtual {p0}, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->refreshViews()V

    .line 652
    invoke-virtual {p0, v5}, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->notifySimOperatorCallbacks(Z)V

    goto/16 :goto_0

    .line 654
    :cond_b
    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 655
    invoke-virtual {p0, v5, v3, v5, v3}, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->updateNetworkName(ZLjava/lang/String;ZLjava/lang/String;)V

    .line 656
    invoke-virtual {p0}, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->refreshViews()V

    goto/16 :goto_0

    .line 657
    :cond_c
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 658
    invoke-direct {p0}, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->refreshLocale()V

    .line 659
    invoke-virtual {p0}, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->updateAirplaneMode()V

    .line 660
    invoke-direct {p0}, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->updateSimIcon()V

    .line 661
    invoke-virtual {p0}, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->refreshViews()V

    goto/16 :goto_0

    .line 662
    :cond_d
    const-string v1, "android.net.fourG.NET_4G_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    const-string v1, "android.net.wimax.SIGNAL_LEVEL_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    const-string v1, "android.net.fourG.wimax.WIMAX_NETWORK_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 665
    :cond_e
    invoke-virtual {p0, p2}, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->updateWimaxState(Landroid/content/Intent;)V

    .line 666
    invoke-virtual {p0}, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->refreshViews()V

    goto/16 :goto_0
.end method

.method public onWifiEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 2019
    iget-object v2, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mWifiStateCallback:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui_ex/controlpanel/policy/NetworkController$WifiStateCallback;

    .line 2020
    .local v0, "cb":Lcom/android/systemui_ex/controlpanel/policy/NetworkController$WifiStateCallback;
    invoke-interface {v0, p1}, Lcom/android/systemui_ex/controlpanel/policy/NetworkController$WifiStateCallback;->onWifiAvailable(Z)V

    goto :goto_0

    .line 2022
    .end local v0    # "cb":Lcom/android/systemui_ex/controlpanel/policy/NetworkController$WifiStateCallback;
    :cond_0
    return-void
.end method

.method protected parseOperatorCode(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "operatorCode"    # Ljava/lang/String;

    .prologue
    .line 409
    const-string v0, "46000"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "46002"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 410
    :cond_0
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0015

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 421
    :goto_0
    return-object v0

    .line 412
    :cond_1
    const-string v0, "46001"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 413
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0016

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 415
    :cond_2
    const-string v0, "46003"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 416
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0017

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 418
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_4

    .line 419
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 421
    :cond_4
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0013

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public refreshSignalCluster(Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl$SignalCluster;)V
    .locals 11
    .param p1, "cluster"    # Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl$SignalCluster;

    .prologue
    const v7, 0x7f020221

    const/4 v1, 0x1

    const/4 v8, 0x0

    .line 511
    iget-boolean v0, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mDemoMode:Z

    if-eqz v0, :cond_0

    .line 554
    :goto_0
    return-void

    .line 512
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mWifiEnabled:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mWifiConnected:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mHasMobileDataFeature:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mAppopsStrictEnabled:Z

    if-eqz v0, :cond_2

    :cond_1
    move v0, v1

    :goto_1
    iget v2, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mWifiIconId:I

    iget v3, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mWifiActivityIconId:I

    iget-object v4, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mContentDescriptionWifi:Ljava/lang/String;

    invoke-interface {p1, v0, v2, v3, v4}, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl$SignalCluster;->setWifiIndicators(ZIILjava/lang/String;)V

    .line 519
    iget-boolean v0, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mIsWimaxEnabled:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mWimaxConnected:Z

    if-eqz v0, :cond_5

    .line 521
    iget-boolean v0, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mAlwaysShowCdmaRssi:Z

    if-eqz v0, :cond_3

    iget v2, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mPhoneSignalIconId:I

    :goto_2
    iget v3, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mMobileActivityIconId:I

    iget v4, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mDataTypeIconId:I

    iget-object v5, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mContentDescriptionWimax:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    iget v0, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mDataTypeIconId:I

    if-ne v0, v7, :cond_4

    move v7, v1

    :goto_3
    iget v9, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mNoSimIconId:I

    move-object v0, p1

    invoke-interface/range {v0 .. v9}, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl$SignalCluster;->setMobileDataIndicators(ZIIILjava/lang/String;Ljava/lang/String;ZZI)V

    .line 553
    :goto_4
    iget-boolean v0, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mAirplaneMode:Z

    iget v1, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mAirplaneIconId:I

    invoke-interface {p1, v0, v1}, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl$SignalCluster;->setIsAirplaneMode(ZI)V

    goto :goto_0

    :cond_2
    move v0, v8

    .line 512
    goto :goto_1

    .line 521
    :cond_3
    iget v2, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mWimaxIconId:I

    goto :goto_2

    :cond_4
    move v7, v8

    goto :goto_3

    .line 533
    :cond_5
    iget-boolean v10, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mHasMobileDataFeature:Z

    iget-boolean v0, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mShowPhoneRSSIForData:Z

    if-eqz v0, :cond_6

    iget v2, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mPhoneSignalIconId:I

    :goto_5
    iget v3, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mMobileActivityIconId:I

    iget v4, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mDataTypeIconId:I

    iget-object v5, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mContentDescriptionPhoneSignal:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    iget v0, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mDataTypeIconId:I

    if-ne v0, v7, :cond_7

    move v7, v1

    :goto_6
    iget v0, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mDataTypeIconId:I

    invoke-direct {p0, v0}, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->isTypeIconWide(I)Z

    move-result v8

    iget v9, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mNoSimIconId:I

    move-object v0, p1

    move v1, v10

    invoke-interface/range {v0 .. v9}, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl$SignalCluster;->setMobileDataIndicators(ZIIILjava/lang/String;Ljava/lang/String;ZZI)V

    goto :goto_4

    :cond_6
    iget v2, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mDataSignalIconId:I

    goto :goto_5

    :cond_7
    move v7, v8

    goto :goto_6
.end method

.method refreshViews()V
    .locals 19

    .prologue
    .line 1329
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    .line 1331
    .local v8, "context":Landroid/content/Context;
    const/4 v7, 0x0

    .line 1332
    .local v7, "combinedSignalIconId":I
    const/4 v5, 0x0

    .line 1333
    .local v5, "combinedActivityIconId":I
    const-string v6, ""

    .line 1334
    .local v6, "combinedLabel":Ljava/lang/String;
    const-string v16, ""

    .line 1335
    .local v16, "wifiLabel":Ljava/lang/String;
    const-string v14, ""

    .line 1337
    .local v14, "mobileLabel":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->isEmergencyOnly()Z

    move-result v9

    .line 1339
    .local v9, "emergencyOnly":Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mHasMobileDataFeature:Z

    move/from16 v17, v0

    if-nez v17, :cond_7

    .line 1340
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mPhoneSignalIconId:I

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mDataSignalIconId:I

    .line 1341
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mQSPhoneSignalIconId:I

    .line 1342
    const-string v14, ""

    .line 1377
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mWifiConnected:Z

    move/from16 v17, v0

    if-eqz v17, :cond_e

    .line 1378
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mWifiSsid:Ljava/lang/String;

    move-object/from16 v17, v0

    if-nez v17, :cond_d

    .line 1379
    const v17, 0x7f0c00e5

    move/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 1380
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mWifiActivityIconId:I

    .line 1402
    :goto_1
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mWifiActivityIconId:I

    .line 1403
    move-object/from16 v6, v16

    .line 1404
    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mWifiIconId:I

    .line 1405
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mContentDescriptionWifi:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mContentDescriptionCombinedSignal:Ljava/lang/String;

    .line 1414
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mBluetoothTethered:Z

    move/from16 v17, v0

    if-eqz v17, :cond_1

    .line 1415
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const v18, 0x7f0c0042

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1416
    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mBluetoothTetherIconId:I

    .line 1417
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const v18, 0x7f0c00a1

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mContentDescriptionCombinedSignal:Ljava/lang/String;

    .line 1421
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mConnectedNetworkType:I

    move/from16 v17, v0

    const/16 v18, 0x9

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_10

    const/4 v10, 0x1

    .line 1422
    .local v10, "ethernetConnected":Z
    :goto_3
    if-eqz v10, :cond_2

    .line 1423
    const v17, 0x7f0c00f4

    move/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1426
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mAirplaneMode:Z

    move/from16 v17, v0

    if-eqz v17, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mServiceState:Landroid/telephony/ServiceState;

    move-object/from16 v17, v0

    if-eqz v17, :cond_3

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->hasService()Z

    move-result v17

    if-nez v17, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mServiceState:Landroid/telephony/ServiceState;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/telephony/ServiceState;->isEmergencyOnly()Z

    move-result v17

    if-nez v17, :cond_13

    .line 1431
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const v18, 0x7f0c00a2

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mContentDescriptionPhoneSignal:Ljava/lang/String;

    .line 1433
    const v17, 0x7f02020d

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mAirplaneIconId:I

    .line 1434
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mQSDataTypeIconId:I

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mDataTypeIconId:I

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mDataSignalIconId:I

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mPhoneSignalIconId:I

    .line 1435
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mQSPhoneSignalIconId:I

    .line 1436
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mNoSimIconId:I

    .line 1439
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mWifiConnected:Z

    move/from16 v17, v0

    if-eqz v17, :cond_11

    .line 1441
    const-string v14, ""

    .line 1465
    :cond_4
    :goto_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mDataConnected:Z

    move/from16 v17, v0

    if-nez v17, :cond_5

    .line 1466
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->inetConditionForNetwork(I)I

    move-result v13

    .line 1468
    .local v13, "inetCondition":I
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 1469
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mQSDataTypeIconId:I

    .line 1470
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->isRoaming()Z

    move-result v17

    if-eqz v17, :cond_5

    .line 1471
    const v17, 0x7f020221

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mDataTypeIconId:I

    .line 1472
    sget-object v17, Lcom/android/systemui_ex/controlpanel/policy/TelephonyIcons;->QS_DATA_R:[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mInetCondition:I

    move/from16 v18, v0

    aget v17, v17, v18

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mQSDataTypeIconId:I

    .line 1476
    .end local v13    # "inetCondition":I
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mDemoMode:Z

    move/from16 v17, v0

    if-eqz v17, :cond_6

    .line 1477
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mDemoWifiLevel:I

    move/from16 v17, v0

    if-gez v17, :cond_16

    const v17, 0x7f020121

    :goto_5
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mQSWifiIconId:I

    .line 1479
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mDemoMobileLevel:I

    move/from16 v17, v0

    if-gez v17, :cond_17

    const v17, 0x7f02010e

    :goto_6
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mQSPhoneSignalIconId:I

    .line 1481
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mDemoQSDataTypeIconId:I

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mQSDataTypeIconId:I

    .line 1536
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mSignalsChangedCallbacks:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :goto_7
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_18

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui_ex/controlpanel/policy/NetworkController$NetworkSignalChangedCallback;

    .line 1537
    .local v3, "cb":Lcom/android/systemui_ex/controlpanel/policy/NetworkController$NetworkSignalChangedCallback;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->notifySignalsChangedCallbacks(Lcom/android/systemui_ex/controlpanel/policy/NetworkController$NetworkSignalChangedCallback;)V

    goto :goto_7

    .line 1352
    .end local v3    # "cb":Lcom/android/systemui_ex/controlpanel/policy/NetworkController$NetworkSignalChangedCallback;
    .end local v10    # "ethernetConnected":Z
    .end local v12    # "i$":Ljava/util/Iterator;
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mDataConnected:Z

    move/from16 v17, v0

    if-eqz v17, :cond_8

    .line 1353
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mNetworkName:Ljava/lang/String;

    .line 1368
    :goto_8
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mDataConnected:Z

    move/from16 v17, v0

    if-eqz v17, :cond_0

    .line 1369
    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mDataSignalIconId:I

    .line 1371
    move-object v6, v14

    .line 1372
    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mDataSignalIconId:I

    .line 1373
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mContentDescriptionCombinedSignal:Ljava/lang/String;

    goto/16 :goto_0

    .line 1354
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mConnected:Z

    move/from16 v17, v0

    if-nez v17, :cond_9

    if-eqz v9, :cond_c

    .line 1355
    :cond_9
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->hasService()Z

    move-result v17

    if-nez v17, :cond_a

    if-eqz v9, :cond_b

    .line 1357
    :cond_a
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mNetworkName:Ljava/lang/String;

    goto :goto_8

    .line 1360
    :cond_b
    const-string v14, ""

    goto :goto_8

    .line 1363
    :cond_c
    const v17, 0x7f0c00e4

    move/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    goto :goto_8

    .line 1382
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mWifiSsid:Ljava/lang/String;

    move-object/from16 v16, v0

    .line 1386
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mWifiActivity:I

    move/from16 v17, v0

    packed-switch v17, :pswitch_data_0

    goto/16 :goto_1

    .line 1397
    :pswitch_0
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mWifiActivityIconId:I

    goto/16 :goto_1

    .line 1388
    :pswitch_1
    const v17, 0x7f020413

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mWifiActivityIconId:I

    goto/16 :goto_1

    .line 1391
    :pswitch_2
    const v17, 0x7f020415

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mWifiActivityIconId:I

    goto/16 :goto_1

    .line 1394
    :pswitch_3
    const v17, 0x7f020414

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mWifiActivityIconId:I

    goto/16 :goto_1

    .line 1407
    :cond_e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mHasMobileDataFeature:Z

    move/from16 v17, v0

    if-eqz v17, :cond_f

    .line 1408
    const-string v16, ""

    goto/16 :goto_2

    .line 1410
    :cond_f
    const v17, 0x7f0c00e4

    move/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v16

    goto/16 :goto_2

    .line 1421
    :cond_10
    const/4 v10, 0x0

    goto/16 :goto_3

    .line 1443
    .restart local v10    # "ethernetConnected":Z
    :cond_11
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mHasMobileDataFeature:Z

    move/from16 v17, v0

    if-eqz v17, :cond_12

    .line 1445
    const-string v16, ""

    .line 1450
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mContentDescriptionPhoneSignal:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mContentDescriptionCombinedSignal:Ljava/lang/String;

    .line 1451
    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mDataSignalIconId:I

    goto/16 :goto_4

    .line 1447
    :cond_12
    const v17, 0x7f0c00e4

    move/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 1448
    move-object/from16 v6, v16

    goto :goto_9

    .line 1454
    :cond_13
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mDataConnected:Z

    move/from16 v17, v0

    if-nez v17, :cond_4

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mWifiConnected:Z

    move/from16 v17, v0

    if-nez v17, :cond_4

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mBluetoothTethered:Z

    move/from16 v17, v0

    if-nez v17, :cond_4

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mWimaxConnected:Z

    move/from16 v17, v0

    if-nez v17, :cond_4

    if-nez v10, :cond_4

    .line 1457
    const v17, 0x7f0c00e4

    move/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1459
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mHasMobileDataFeature:Z

    move/from16 v17, v0

    if-eqz v17, :cond_14

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mDataSignalIconId:I

    .line 1461
    :goto_a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mHasMobileDataFeature:Z

    move/from16 v17, v0

    if-eqz v17, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    move-object/from16 v17, v0

    :goto_b
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mContentDescriptionCombinedSignal:Ljava/lang/String;

    goto/16 :goto_4

    .line 1459
    :cond_14
    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mWifiIconId:I

    goto :goto_a

    .line 1461
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mContentDescriptionWifi:Ljava/lang/String;

    move-object/from16 v17, v0

    goto :goto_b

    .line 1477
    :cond_16
    sget-object v17, Lcom/android/systemui_ex/controlpanel/policy/WifiIcons;->QS_WIFI_SIGNAL_STRENGTH:[[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mDemoInetCondition:I

    move/from16 v18, v0

    aget-object v17, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mDemoWifiLevel:I

    move/from16 v18, v0

    aget v17, v17, v18

    goto/16 :goto_5

    .line 1479
    :cond_17
    sget-object v17, Lcom/android/systemui_ex/controlpanel/policy/TelephonyIcons;->QS_TELEPHONY_SIGNAL_STRENGTH:[[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mDemoInetCondition:I

    move/from16 v18, v0

    aget-object v17, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mDemoMobileLevel:I

    move/from16 v18, v0

    aget v17, v17, v18

    goto/16 :goto_6

    .line 1540
    .restart local v12    # "i$":Ljava/util/Iterator;
    :cond_18
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mLastPhoneSignalIconId:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mPhoneSignalIconId:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mLastDataDirectionOverlayIconId:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-ne v0, v5, :cond_19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mLastWifiIconId:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mWifiIconId:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mLastInetCondition:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mInetCondition:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mLastWimaxIconId:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mWimaxIconId:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mLastDataTypeIconId:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mDataTypeIconId:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_19

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mLastAirplaneMode:Z

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mAirplaneMode:Z

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mLastLocale:Ljava/util/Locale;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mLocale:Ljava/util/Locale;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mLastConnectedNetworkType:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mConnectedNetworkType:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mLastSimIconId:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mNoSimIconId:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mLastMobileActivityIconId:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mMobileActivityIconId:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_1a

    .line 1553
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mSignalClusters:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_c
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_1a

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl$SignalCluster;

    .line 1554
    .local v4, "cluster":Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl$SignalCluster;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->refreshSignalCluster(Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl$SignalCluster;)V

    goto :goto_c

    .line 1558
    .end local v4    # "cluster":Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl$SignalCluster;
    :cond_1a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mLastAirplaneMode:Z

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mAirplaneMode:Z

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_1b

    .line 1559
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mAirplaneMode:Z

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mLastAirplaneMode:Z

    .line 1562
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mLastLocale:Ljava/util/Locale;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mLocale:Ljava/util/Locale;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_1c

    .line 1563
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mLocale:Ljava/util/Locale;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mLastLocale:Ljava/util/Locale;

    .line 1567
    :cond_1c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mLastPhoneSignalIconId:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mPhoneSignalIconId:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_1e

    .line 1568
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mPhoneSignalIconId:I

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mLastPhoneSignalIconId:I

    .line 1569
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mPhoneSignalIconViews:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1570
    .local v2, "N":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_d
    if-ge v11, v2, :cond_1e

    .line 1571
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mPhoneSignalIconViews:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/widget/ImageView;

    .line 1572
    .local v15, "v":Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mPhoneSignalIconId:I

    move/from16 v17, v0

    if-nez v17, :cond_1d

    .line 1573
    const/16 v17, 0x8

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1570
    :goto_e
    add-int/lit8 v11, v11, 0x1

    goto :goto_d

    .line 1575
    :cond_1d
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1576
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mPhoneSignalIconId:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1577
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mContentDescriptionPhoneSignal:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_e

    .line 1582
    .end local v2    # "N":I
    .end local v11    # "i":I
    .end local v15    # "v":Landroid/widget/ImageView;
    :cond_1e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mLastMobileActivityIconId:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mMobileActivityIconId:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_1f

    .line 1583
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mMobileActivityIconId:I

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mLastMobileActivityIconId:I

    .line 1587
    :cond_1f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mLastDataDirectionIconId:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mDataDirectionIconId:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_20

    .line 1588
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mDataDirectionIconId:I

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mLastDataDirectionIconId:I

    .line 1589
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mDataDirectionIconViews:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1590
    .restart local v2    # "N":I
    const/4 v11, 0x0

    .restart local v11    # "i":I
    :goto_f
    if-ge v11, v2, :cond_20

    .line 1591
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mDataDirectionIconViews:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/widget/ImageView;

    .line 1592
    .restart local v15    # "v":Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mDataDirectionIconId:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1593
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1590
    add-int/lit8 v11, v11, 0x1

    goto :goto_f

    .line 1597
    .end local v2    # "N":I
    .end local v11    # "i":I
    .end local v15    # "v":Landroid/widget/ImageView;
    :cond_20
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mLastSimIconId:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mNoSimIconId:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_21

    .line 1598
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mNoSimIconId:I

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mLastSimIconId:I

    .line 1602
    :cond_21
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mLastWifiIconId:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mWifiIconId:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_23

    .line 1603
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mWifiIconId:I

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mLastWifiIconId:I

    .line 1604
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mWifiIconViews:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1605
    .restart local v2    # "N":I
    const/4 v11, 0x0

    .restart local v11    # "i":I
    :goto_10
    if-ge v11, v2, :cond_23

    .line 1606
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mWifiIconViews:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/widget/ImageView;

    .line 1607
    .restart local v15    # "v":Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mWifiIconId:I

    move/from16 v17, v0

    if-nez v17, :cond_22

    .line 1608
    const/16 v17, 0x8

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1605
    :goto_11
    add-int/lit8 v11, v11, 0x1

    goto :goto_10

    .line 1610
    :cond_22
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1611
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mWifiIconId:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1612
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mContentDescriptionWifi:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_11

    .line 1617
    .end local v2    # "N":I
    .end local v11    # "i":I
    .end local v15    # "v":Landroid/widget/ImageView;
    :cond_23
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mLastInetCondition:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mInetCondition:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_24

    .line 1618
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mInetCondition:I

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mLastInetCondition:I

    .line 1621
    :cond_24
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mLastConnectedNetworkType:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mConnectedNetworkType:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_25

    .line 1622
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mConnectedNetworkType:I

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mLastConnectedNetworkType:I

    .line 1626
    :cond_25
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mLastWimaxIconId:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mWimaxIconId:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_27

    .line 1627
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mWimaxIconId:I

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mLastWimaxIconId:I

    .line 1628
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mWimaxIconViews:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1629
    .restart local v2    # "N":I
    const/4 v11, 0x0

    .restart local v11    # "i":I
    :goto_12
    if-ge v11, v2, :cond_27

    .line 1630
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mWimaxIconViews:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/widget/ImageView;

    .line 1631
    .restart local v15    # "v":Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mWimaxIconId:I

    move/from16 v17, v0

    if-nez v17, :cond_26

    .line 1632
    const/16 v17, 0x8

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1629
    :goto_13
    add-int/lit8 v11, v11, 0x1

    goto :goto_12

    .line 1634
    :cond_26
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1635
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mWimaxIconId:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1636
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mContentDescriptionWimax:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_13

    .line 1641
    .end local v2    # "N":I
    .end local v11    # "i":I
    .end local v15    # "v":Landroid/widget/ImageView;
    :cond_27
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mLastCombinedSignalIconId:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-eq v0, v7, :cond_28

    .line 1642
    move-object/from16 v0, p0

    iput v7, v0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mLastCombinedSignalIconId:I

    .line 1643
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mCombinedSignalIconViews:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1644
    .restart local v2    # "N":I
    const/4 v11, 0x0

    .restart local v11    # "i":I
    :goto_14
    if-ge v11, v2, :cond_28

    .line 1645
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mCombinedSignalIconViews:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/widget/ImageView;

    .line 1646
    .restart local v15    # "v":Landroid/widget/ImageView;
    invoke-virtual {v15, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1647
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mContentDescriptionCombinedSignal:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1644
    add-int/lit8 v11, v11, 0x1

    goto :goto_14

    .line 1652
    .end local v2    # "N":I
    .end local v11    # "i":I
    .end local v15    # "v":Landroid/widget/ImageView;
    :cond_28
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mLastDataTypeIconId:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mDataTypeIconId:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_2a

    .line 1653
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mDataTypeIconId:I

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mLastDataTypeIconId:I

    .line 1654
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mDataTypeIconViews:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1655
    .restart local v2    # "N":I
    const/4 v11, 0x0

    .restart local v11    # "i":I
    :goto_15
    if-ge v11, v2, :cond_2a

    .line 1656
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mDataTypeIconViews:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/widget/ImageView;

    .line 1657
    .restart local v15    # "v":Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mDataTypeIconId:I

    move/from16 v17, v0

    if-nez v17, :cond_29

    .line 1658
    const/16 v17, 0x8

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1655
    :goto_16
    add-int/lit8 v11, v11, 0x1

    goto :goto_15

    .line 1660
    :cond_29
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1661
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mDataTypeIconId:I

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1662
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_16

    .line 1668
    .end local v2    # "N":I
    .end local v11    # "i":I
    .end local v15    # "v":Landroid/widget/ImageView;
    :cond_2a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mLastDataDirectionOverlayIconId:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-eq v0, v5, :cond_2c

    .line 1673
    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mLastDataDirectionOverlayIconId:I

    .line 1674
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mDataDirectionOverlayIconViews:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1675
    .restart local v2    # "N":I
    const/4 v11, 0x0

    .restart local v11    # "i":I
    :goto_17
    if-ge v11, v2, :cond_2c

    .line 1676
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mDataDirectionOverlayIconViews:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/widget/ImageView;

    .line 1677
    .restart local v15    # "v":Landroid/widget/ImageView;
    if-nez v5, :cond_2b

    .line 1678
    const/16 v17, 0x8

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1675
    :goto_18
    add-int/lit8 v11, v11, 0x1

    goto :goto_17

    .line 1680
    :cond_2b
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1681
    invoke-virtual {v15, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1682
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mContentDescriptionDataType:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_18

    .line 1688
    .end local v2    # "N":I
    .end local v11    # "i":I
    .end local v15    # "v":Landroid/widget/ImageView;
    :cond_2c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mLastCombinedLabel:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_2d

    .line 1689
    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mLastCombinedLabel:Ljava/lang/String;

    .line 1690
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mCombinedLabelViews:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1691
    .restart local v2    # "N":I
    const/4 v11, 0x0

    .restart local v11    # "i":I
    :goto_19
    if-ge v11, v2, :cond_2d

    .line 1692
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mCombinedLabelViews:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 1693
    .local v15, "v":Landroid/widget/TextView;
    invoke-virtual {v15, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1691
    add-int/lit8 v11, v11, 0x1

    goto :goto_19

    .line 1698
    .end local v2    # "N":I
    .end local v11    # "i":I
    .end local v15    # "v":Landroid/widget/TextView;
    :cond_2d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mWifiLabelViews:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1699
    .restart local v2    # "N":I
    const/4 v11, 0x0

    .restart local v11    # "i":I
    :goto_1a
    if-ge v11, v2, :cond_2f

    .line 1700
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mWifiLabelViews:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 1701
    .restart local v15    # "v":Landroid/widget/TextView;
    invoke-virtual/range {v15 .. v16}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1702
    const-string v17, ""

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2e

    .line 1703
    const/16 v17, 0x8

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1699
    :goto_1b
    add-int/lit8 v11, v11, 0x1

    goto :goto_1a

    .line 1705
    :cond_2e
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1b

    .line 1710
    .end local v15    # "v":Landroid/widget/TextView;
    :cond_2f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mMobileLabelViews:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1711
    const/4 v11, 0x0

    :goto_1c
    if-ge v11, v2, :cond_31

    .line 1712
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mMobileLabelViews:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 1713
    .restart local v15    # "v":Landroid/widget/TextView;
    invoke-virtual {v15, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1714
    const-string v17, ""

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_30

    .line 1715
    const/16 v17, 0x8

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1711
    :goto_1d
    add-int/lit8 v11, v11, 0x1

    goto :goto_1c

    .line 1717
    :cond_30
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1d

    .line 1722
    .end local v15    # "v":Landroid/widget/TextView;
    :cond_31
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mEmergencyViews:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1723
    const/4 v11, 0x0

    :goto_1e
    if-ge v11, v2, :cond_32

    .line 1724
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mEmergencyViews:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;

    .line 1725
    .local v15, "v":Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;
    invoke-virtual {v15, v9}, Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;->setShowEmergencyCallsOnly(Z)V

    .line 1723
    add-int/lit8 v11, v11, 0x1

    goto :goto_1e

    .line 1728
    .end local v15    # "v":Lcom/android/systemui_ex/statusbar/phone/StatusBarHeaderView;
    :cond_32
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->setCarrierText()V

    .line 1729
    return-void

    .line 1386
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected registerPhoneStateListener(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 336
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    .line 337
    iget-object v0, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mPhone:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x1e1

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 343
    return-void
.end method

.method public setWifiEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 452
    new-instance v0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl$2;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl$2;-><init>(Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;Z)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl$2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 466
    return-void
.end method

.method protected updateAirplaneMode()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 897
    iget-object v2, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mAirplaneMode:Z

    .line 899
    invoke-virtual {p0}, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->notifyAirplaneModeChanged()V

    .line 900
    return-void

    :cond_0
    move v0, v1

    .line 897
    goto :goto_0
.end method

.method protected updateConnectivity(Landroid/content/Intent;)V
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1288
    iget-object v3, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const-string v6, "connectivity"

    invoke-virtual {v3, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1290
    .local v0, "connManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 1293
    .local v2, "info":Landroid/net/NetworkInfo;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v4

    :goto_0
    iput-boolean v3, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mConnected:Z

    .line 1294
    iget-boolean v3, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mConnected:Z

    if-eqz v3, :cond_1

    .line 1295
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    iput v3, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mConnectedNetworkType:I

    .line 1296
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mConnectedNetworkTypeName:Ljava/lang/String;

    .line 1302
    :goto_1
    const-string v3, "inetCondition"

    invoke-virtual {p1, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 1309
    .local v1, "connectionStatus":I
    const/16 v3, 0x32

    if-le v1, v3, :cond_2

    :goto_2
    iput v4, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mInetCondition:I

    .line 1311
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    const/4 v4, 0x7

    if-ne v3, v4, :cond_3

    .line 1312
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mBluetoothTethered:Z

    .line 1318
    :goto_3
    invoke-direct {p0}, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->updateDataNetType()V

    .line 1319
    invoke-virtual {p0}, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->updateWimaxIcons()V

    .line 1320
    invoke-direct {p0}, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->updateDataIcon()V

    .line 1321
    invoke-direct {p0}, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->updateTelephonySignalStrength()V

    .line 1322
    invoke-virtual {p0}, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->updateWifiIcons()V

    .line 1323
    return-void

    .end local v1    # "connectionStatus":I
    :cond_0
    move v3, v5

    .line 1293
    goto :goto_0

    .line 1298
    :cond_1
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mConnectedNetworkType:I

    .line 1299
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mConnectedNetworkTypeName:Ljava/lang/String;

    goto :goto_1

    .restart local v1    # "connectionStatus":I
    :cond_2
    move v4, v5

    .line 1309
    goto :goto_2

    .line 1314
    :cond_3
    iput-boolean v5, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mBluetoothTethered:Z

    goto :goto_3
.end method

.method updateNetworkName(ZLjava/lang/String;ZLjava/lang/String;)V
    .locals 5
    .param p1, "showSpn"    # Z
    .param p2, "spn"    # Ljava/lang/String;
    .param p3, "showPlmn"    # Z
    .param p4, "plmn"    # Ljava/lang/String;

    .prologue
    const v4, 0x1120099

    .line 1084
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1085
    .local v1, "str":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .line 1086
    .local v0, "something":Z
    if-eqz p3, :cond_1

    if-eqz p4, :cond_1

    .line 1087
    iget-object v2, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v2, :cond_0

    .line 1089
    iget-object v2, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {p0, p4, v2}, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->appendRatToNetworkName(Ljava/lang/String;Landroid/telephony/ServiceState;)Ljava/lang/String;

    move-result-object p4

    .line 1091
    :cond_0
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1092
    const/4 v0, 0x1

    .line 1094
    :cond_1
    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 1095
    iget-object v2, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x112009a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_3

    if-eqz v0, :cond_3

    .line 1112
    :cond_2
    :goto_0
    if-eqz v0, :cond_6

    .line 1113
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mNetworkName:Ljava/lang/String;

    .line 1117
    :goto_1
    return-void

    .line 1101
    :cond_3
    if-eqz v0, :cond_4

    .line 1102
    iget-object v2, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mNetworkNameSeparator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1104
    :cond_4
    iget-object v2, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mServiceState:Landroid/telephony/ServiceState;

    if-eqz v2, :cond_5

    .line 1106
    iget-object v2, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {p0, p2, v2}, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->appendRatToNetworkName(Ljava/lang/String;Landroid/telephony/ServiceState;)Ljava/lang/String;

    move-result-object p2

    .line 1108
    :cond_5
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1109
    const/4 v0, 0x1

    goto :goto_0

    .line 1115
    :cond_6
    iget-object v2, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mNetworkNameDefault:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mNetworkName:Ljava/lang/String;

    goto :goto_1
.end method

.method protected updateSimState(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 831
    const-string v2, "ss"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 836
    .local v1, "stateExtra":Ljava/lang/String;
    const-string v2, "ABSENT"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 837
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v2, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 864
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->updateSimIcon()V

    .line 865
    return-void

    .line 839
    :cond_0
    const-string v2, "CARD_IO_ERROR"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 840
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->CARD_IO_ERROR:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v2, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    goto :goto_0

    .line 842
    :cond_1
    const-string v2, "READY"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "IMSI"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "LOADED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 845
    :cond_2
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v2, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    goto :goto_0

    .line 847
    :cond_3
    const-string v2, "LOCKED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 848
    const-string v2, "reason"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 850
    .local v0, "lockedReason":Ljava/lang/String;
    const-string v2, "PIN"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 851
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v2, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    goto :goto_0

    .line 853
    :cond_4
    const-string v2, "PUK"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 854
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v2, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    goto :goto_0

    .line 857
    :cond_5
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->PERSO_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v2, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    goto :goto_0

    .line 860
    .end local v0    # "lockedReason":Ljava/lang/String;
    :cond_6
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v2, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mSimState:Lcom/android/internal/telephony/IccCardConstants$State;

    goto :goto_0
.end method

.method protected updateWifiIcons()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 1202
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->inetConditionForNetwork(I)I

    move-result v0

    .line 1203
    .local v0, "inetCondition":I
    iget-boolean v1, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mWifiConnected:Z

    if-eqz v1, :cond_0

    .line 1204
    sget-object v1, Lcom/android/systemui_ex/controlpanel/policy/WifiIcons;->WIFI_SIGNAL_STRENGTH:[[I

    aget-object v1, v1, v0

    iget v2, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mWifiLevel:I

    aget v1, v1, v2

    iput v1, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mWifiIconId:I

    .line 1205
    sget-object v1, Lcom/android/systemui_ex/controlpanel/policy/WifiIcons;->QS_WIFI_SIGNAL_STRENGTH:[[I

    aget-object v1, v1, v0

    iget v2, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mWifiLevel:I

    aget v1, v1, v2

    iput v1, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mQSWifiIconId:I

    .line 1206
    iget-object v1, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/systemui_ex/controlpanel/policy/AccessibilityContentDescriptions;->WIFI_CONNECTION_STRENGTH:[I

    iget v3, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mWifiLevel:I

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mContentDescriptionWifi:Ljava/lang/String;

    .line 1218
    :goto_0
    return-void

    .line 1209
    :cond_0
    iget-boolean v1, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mDataAndWifiStacked:Z

    if-eqz v1, :cond_1

    .line 1210
    iput v2, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mWifiIconId:I

    .line 1211
    iput v2, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mQSWifiIconId:I

    .line 1216
    :goto_1
    iget-object v1, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v2, 0x7f0c007e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mContentDescriptionWifi:Ljava/lang/String;

    goto :goto_0

    .line 1213
    :cond_1
    iget-boolean v1, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mWifiEnabled:Z

    if-eqz v1, :cond_3

    const v1, 0x7f020420

    :goto_2
    iput v1, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mWifiIconId:I

    .line 1214
    iget-boolean v1, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mWifiEnabled:Z

    if-eqz v1, :cond_2

    const v2, 0x7f020121

    :cond_2
    iput v2, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mQSWifiIconId:I

    goto :goto_1

    :cond_3
    move v1, v2

    .line 1213
    goto :goto_2
.end method

.method protected updateWifiState(Landroid/content/Intent;)V
    .locals 8
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1166
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1167
    .local v0, "action":Ljava/lang/String;
    const-string v6, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1168
    const-string v6, "wifi_state"

    const/4 v7, 0x4

    invoke-virtual {p1, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_1

    :goto_0
    iput-boolean v4, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mWifiEnabled:Z

    .line 1170
    iget-boolean v4, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mWifiEnabled:Z

    invoke-virtual {p0, v4}, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->onWifiEnabled(Z)V

    .line 1198
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->updateWifiIcons()V

    .line 1199
    return-void

    :cond_1
    move v4, v5

    .line 1168
    goto :goto_0

    .line 1171
    :cond_2
    const-string v6, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 1172
    const-string v6, "networkInfo"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkInfo;

    .line 1174
    .local v2, "networkInfo":Landroid/net/NetworkInfo;
    iget-boolean v3, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mWifiConnected:Z

    .line 1175
    .local v3, "wasConnected":Z
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v6

    if-eqz v6, :cond_5

    :goto_2
    iput-boolean v4, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mWifiConnected:Z

    .line 1177
    iget-boolean v4, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mWifiConnected:Z

    if-eqz v4, :cond_7

    .line 1179
    const-string v4, "wifiInfo"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiInfo;

    .line 1180
    .local v1, "info":Landroid/net/wifi/WifiInfo;
    if-nez v1, :cond_3

    .line 1181
    iget-object v4, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 1183
    :cond_3
    if-eqz v1, :cond_6

    .line 1184
    invoke-direct {p0, v1}, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->huntForSsid(Landroid/net/wifi/WifiInfo;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mWifiSsid:Ljava/lang/String;

    .line 1191
    .end local v1    # "info":Landroid/net/wifi/WifiInfo;
    :cond_4
    :goto_3
    iget-boolean v4, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mWifiConnected:Z

    iget-object v5, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mWifiSsid:Ljava/lang/String;

    invoke-virtual {p0, v4, v5}, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->wifiStateChanged(ZLjava/lang/String;)V

    goto :goto_1

    :cond_5
    move v4, v5

    .line 1175
    goto :goto_2

    .line 1186
    .restart local v1    # "info":Landroid/net/wifi/WifiInfo;
    :cond_6
    iput-object v7, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mWifiSsid:Ljava/lang/String;

    goto :goto_3

    .line 1188
    .end local v1    # "info":Landroid/net/wifi/WifiInfo;
    :cond_7
    iget-boolean v4, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mWifiConnected:Z

    if-nez v4, :cond_4

    .line 1189
    iput-object v7, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mWifiSsid:Ljava/lang/String;

    goto :goto_3

    .line 1192
    .end local v2    # "networkInfo":Landroid/net/NetworkInfo;
    .end local v3    # "wasConnected":Z
    :cond_8
    const-string v4, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1193
    const-string v4, "newRssi"

    const/16 v5, -0xc8

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mWifiRssi:I

    .line 1194
    iget v4, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mWifiRssi:I

    sget v5, Lcom/android/systemui_ex/controlpanel/policy/WifiIcons;->WIFI_LEVEL_COUNT:I

    invoke-static {v4, v5}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result v4

    iput v4, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mWifiLevel:I

    goto :goto_1
.end method

.method protected updateWimaxIcons()V
    .locals 4

    .prologue
    .line 1263
    iget-boolean v1, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mIsWimaxEnabled:Z

    if-eqz v1, :cond_2

    .line 1264
    iget-boolean v1, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mWimaxConnected:Z

    if-eqz v1, :cond_1

    .line 1265
    const/4 v1, 0x6

    invoke-direct {p0, v1}, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->inetConditionForNetwork(I)I

    move-result v0

    .line 1266
    .local v0, "inetCondition":I
    iget-boolean v1, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mWimaxIdle:Z

    if-eqz v1, :cond_0

    .line 1267
    sget v1, Lcom/android/systemui_ex/controlpanel/policy/WimaxIcons;->WIMAX_IDLE:I

    iput v1, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mWimaxIconId:I

    .line 1270
    :goto_0
    iget-object v1, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/systemui_ex/controlpanel/policy/AccessibilityContentDescriptions;->WIMAX_CONNECTION_STRENGTH:[I

    iget v3, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mWimaxSignal:I

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mContentDescriptionWimax:Ljava/lang/String;

    .line 1279
    .end local v0    # "inetCondition":I
    :goto_1
    return-void

    .line 1269
    .restart local v0    # "inetCondition":I
    :cond_0
    sget-object v1, Lcom/android/systemui_ex/controlpanel/policy/WimaxIcons;->WIMAX_SIGNAL_STRENGTH:[[I

    aget-object v1, v1, v0

    iget v2, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mWimaxSignal:I

    aget v1, v1, v2

    iput v1, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mWimaxIconId:I

    goto :goto_0

    .line 1273
    .end local v0    # "inetCondition":I
    :cond_1
    sget v1, Lcom/android/systemui_ex/controlpanel/policy/WimaxIcons;->WIMAX_DISCONNECTED:I

    iput v1, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mWimaxIconId:I

    .line 1274
    iget-object v1, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mContext:Landroid/content/Context;

    const v2, 0x7f0c0085

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mContentDescriptionWimax:Ljava/lang/String;

    goto :goto_1

    .line 1277
    :cond_2
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mWimaxIconId:I

    goto :goto_1
.end method

.method protected final updateWimaxState(Landroid/content/Intent;)V
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x4

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1239
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1240
    .local v0, "action":Ljava/lang/String;
    iget-boolean v1, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mWimaxConnected:Z

    .line 1241
    .local v1, "wasConnected":Z
    const-string v5, "android.net.fourG.NET_4G_STATE_CHANGED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1242
    const-string v5, "4g_state"

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 1244
    .local v2, "wimaxStatus":I
    const/4 v5, 0x3

    if-ne v2, v5, :cond_1

    :goto_0
    iput-boolean v3, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mIsWimaxEnabled:Z

    .line 1258
    .end local v2    # "wimaxStatus":I
    :cond_0
    :goto_1
    invoke-direct {p0}, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->updateDataNetType()V

    .line 1259
    invoke-virtual {p0}, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->updateWimaxIcons()V

    .line 1260
    return-void

    .restart local v2    # "wimaxStatus":I
    :cond_1
    move v3, v4

    .line 1244
    goto :goto_0

    .line 1246
    .end local v2    # "wimaxStatus":I
    :cond_2
    const-string v5, "android.net.wimax.SIGNAL_LEVEL_CHANGED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1247
    const-string v3, "newSignalLevel"

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mWimaxSignal:I

    goto :goto_1

    .line 1248
    :cond_3
    const-string v5, "android.net.fourG.wimax.WIMAX_NETWORK_STATE_CHANGED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1249
    const-string v5, "WimaxState"

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mWimaxState:I

    .line 1251
    const-string v5, "WimaxStateDetail"

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mWimaxExtraState:I

    .line 1254
    iget v5, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mWimaxState:I

    const/4 v6, 0x7

    if-ne v5, v6, :cond_4

    move v5, v3

    :goto_2
    iput-boolean v5, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mWimaxConnected:Z

    .line 1256
    iget v5, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mWimaxExtraState:I

    const/4 v6, 0x6

    if-ne v5, v6, :cond_5

    :goto_3
    iput-boolean v3, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mWimaxIdle:Z

    goto :goto_1

    :cond_4
    move v5, v4

    .line 1254
    goto :goto_2

    :cond_5
    move v3, v4

    .line 1256
    goto :goto_3
.end method

.method public wifiStateChanged(ZLjava/lang/String;)V
    .locals 3
    .param p1, "connected"    # Z
    .param p2, "ssid"    # Ljava/lang/String;

    .prologue
    .line 2025
    iget-object v2, p0, Lcom/android/systemui_ex/controlpanel/policy/NetworkControllerImpl;->mWifiStateCallback:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui_ex/controlpanel/policy/NetworkController$WifiStateCallback;

    .line 2026
    .local v0, "cb":Lcom/android/systemui_ex/controlpanel/policy/NetworkController$WifiStateCallback;
    invoke-interface {v0, p1, p2}, Lcom/android/systemui_ex/controlpanel/policy/NetworkController$WifiStateCallback;->onWifiStateChanged(ZLjava/lang/String;)V

    goto :goto_0

    .line 2028
    .end local v0    # "cb":Lcom/android/systemui_ex/controlpanel/policy/NetworkController$WifiStateCallback;
    :cond_0
    return-void
.end method
